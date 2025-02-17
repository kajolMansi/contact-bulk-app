<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Laravel</title>

    <!-- Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@400;600;700&display=swap" rel="stylesheet">

    <!-- Styles -->
    <style>
        :root {
            --primary: #4f46e5;
            --primary-dark: #4338ca;
            --gray: #6b7280;
            --error: #ef4444;
            --success: #22c55e;
        }

        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        body {
            font-family: system-ui, -apple-system, sans-serif;
            background: #f3f4f6;
            color: #1f2937;
            line-height: 1.5;
            padding: 2rem;
        }

        .form-container {
            max-width: 600px;
            margin: 0 auto;
            background: white;
            padding: 2rem;
            border-radius: 1rem;
            box-shadow: 0 4px 6px -1px rgb(0 0 0 / 0.1);
        }

        h1 {
            font-size: 1.5rem;
            margin-bottom: 1.5rem;
            color: #111827;
        }

        .form-group {
            margin-bottom: 1.5rem;
            position: relative;
        }

        label {
            display: block;
            margin-bottom: 0.5rem;
            font-weight: 500;
        }

        input,
        textarea {
            width: 100%;
            padding: 0.75rem;
            border: 1px solid #d1d5db;
            border-radius: 0.5rem;
            font-size: 1rem;
            transition: all 0.15s ease;
        }

        input:focus,
        textarea:focus {
            outline: none;
            border-color: var(--primary);
            box-shadow: 0 0 0 3px rgba(79, 70, 229, 0.1);
        }

        .error-message {
            color: var(--error);
            font-size: 0.875rem;
            margin-top: 0.25rem;
            display: none;
        }

        .validation-icon {
            position: absolute;
            right: 1rem;
            top: 2.5rem;
            display: none;
        }

        .validation-icon.success {
            color: var(--success);
            display: block;
        }

        .validation-icon.error {
            color: var(--error);
            display: block;
        }

        input.success,
        textarea.success {
            border-color: var(--success);
        }

        input.error,
        textarea.error {
            border-color: var(--error);
        }

        .checkbox-group {
            display: flex;
            align-items: start;
            gap: 0.75rem;
            margin-top: 1rem;
        }

        .checkbox-group input[type="checkbox"] {
            width: auto;
            margin-top: 0.25rem;
        }

        .checkbox-group label {
            font-size: 0.875rem;
            color: var(--gray);
        }

        button {
            background: var(--primary);
            color: white;
            padding: 0.75rem 1.5rem;
            border: none;
            border-radius: 0.5rem;
            font-size: 1rem;
            font-weight: 500;
            cursor: pointer;
            transition: background-color 0.15s ease;
        }

        button:hover {
            background: var(--primary-dark);
        }

        .privacy-notice {
            font-size: 0.875rem;
            color: var(--gray);
            margin-top: 2rem;
            padding-top: 1rem;
            border-top: 1px solid #e5e7eb;
        }

        .success-message {
            display: none;
            background: #dcfce7;
            color: #166534;
            padding: 1rem;
            border-radius: 0.5rem;
            margin-bottom: 1rem;
        }
    </style>

    <style>
        body {
            font-family: 'Nunito', sans-serif;
        }
    </style>
</head>

<body class="antialiased">

    <div class="form-container">

        <h1>Contact Form</h1>
        @if(session('success'))
        <p style="color:green;">{{ session('success') }}</p>
        @endif
        <form id="form" novalidate enctype="multipart/form-data" action="{{ route('contacts.store') }}" method="POST">
            @csrf
            <div class="form-group">
                <label for="name">First Name *</label>
                <input type="text" id="first_name" name="first_name" required>
                <span class="validation-icon">✓</span>
                <div class="error-message" id="nameError">Please enter your first name</div>

                <label for="name">Last Name *</label>
                <input type="text" id="last_name" name="last_name" required>
                <span class="validation-icon">✓</span>
                <div class="error-message" id="nameError">Please enter your last name</div>
            </div>

            <div class="form-group">
                <label for="email">Email Address *</label>
                <input type="email" id="email" name="email" required>
                <span class="validation-icon">✓</span>
                <div class="error-message" id="emailError">Please enter a valid email address</div>
            </div>

            <div class="form-group">
                <label for="phone">Mobile Number *</label>
                <input type="number" id="phone" name="phone" maxlength="10" required>
                <span class="validation-icon">✓</span>
                <div class="error-message" id="messageError">Please enter your Mobile number</div>
            </div>

            <button type="submit" value="submit">Submit Form</button>


        </form>
    </div>
</body>

</html>