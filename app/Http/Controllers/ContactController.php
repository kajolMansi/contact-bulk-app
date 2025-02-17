<?php

namespace App\Http\Controllers;

use App\Models\Contact;
use Illuminate\Http\Request;

class ContactController extends Controller
{
    public function index()
    {
        $contacts = Contact::all();
        return view('contacts.index', compact('contacts'));
    }

    public function create()
    {
        return view('contacts.create');
    }

    public function store(Request $request)
    {

        $validatedData = $request->validate([
            'first_name' => 'required|string|max:255',
            'last_name' => 'required|string|max:255',
            'email' => 'required|email|max:255',
            'phone' => 'required|numeric|digits:10',
        ]);

        Contact::create([
            'first_name' => $request->first_name,
            'last_name' => $request->last_name,
            'email' => $request->email,
            'phone' => $request->phone,
        ]);

        return redirect()->route('contacts.create')->with('success', 'Contact created successfully!');
    }

    public function edit($id)
    {
        $contact = Contact::findOrFail($id);
        return view('contacts.edit', compact('contact'));
    }

    public function update(Request $request, $id)
    {
        $request->validate([
            'first_name' => 'required|string|max:255',
            'last_name' => 'required|string|max:255',
            'email' => 'required|email|max:255',
            'phone' => 'required|numeric|digits:10',
        ]);

        $contact = Contact::findOrFail($id);
        $contact->first_name = $request->input('first_name');
        $contact->last_name = $request->input('last_name');
        $contact->email = $request->input('email');
        $contact->phone = $request->input('phone');
        $contact->save();

        return redirect()->route('contacts.index')->with('success', 'Contact updated successfully!');
    }

    public function destroy($id)
    {
        $contact = Contact::findOrFail($id);
        $contact->delete();

        return redirect()->route('contacts.index')->with('success', 'Contact deleted successfully!');
    }

    public function showImportForm()
    {
        return view('contacts.importbulk');
    }

    public function importXML(Request $request)
    {
        $request->validate([
            'contacts_file' => 'required|file|mimes:xml|max:2048',
        ]);

        $xml = simplexml_load_file($request->file('contacts_file')->getRealPath());

        foreach ($xml->contact as $contact) {
            $firstName = (string)$contact->name;
            $lastName = (string)$contact->lastName;
            $phone = (string)$contact->phone;

            Contact::create([
                'first_name' => $firstName,
                'last_name' => $lastName,
                'phone' => $phone,
            ]);
        }

        return redirect()->route('contacts.index')->with('success', 'Contacts imported successfully!');
    }
}
