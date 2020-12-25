module.exports = {
    parser: '@typescript-eslint/parser',
    parserOptions: {
        ecmaFeatures: {
            jsx: true
        },
        ecmaVersion: 2020,
        sourceType: 'module',
        project: 'tsconfig.json'
    },
    plugins: ['react', '@typescript-eslint', 'jest'],
    extends: [
        'airbnb-typescript',
        'airbnb/hooks',
        'plugin:@typescript-eslint/recommended',
        'plugin:jest/recommended',
        'prettier',
        'prettier/react',
        'prettier/@typescript-eslint',
        'plugin:prettier/recommended'
    ],
    root: true,
    env: {
        browser: true,
        node: true,
        es6: true,
        jest: true
    },
    globals: {
        Atomics: 'readonly',
        SharedArrayBuffer: 'readonly'
    },
    ignorePatterns: ['.eslintrc.js'],
    rules: {
        'linebreak-style': 'off',
        'no-nested-ternary': 'off',
        '@typescript-eslint/no-use-before-define': 'off',
        'no-plusplus': ['error', { allowForLoopAfterthoughts: true }],
        'prettier/prettier': ['error', { usePrettierrc: true }],
        'import/order': [
            'error',
            {
                groups: ['builtin', 'external', 'internal'],
                pathGroups: [
                    {
                        pattern: 'react',
                        group: 'external',
                        position: 'before'
                    }
                ],
                pathGroupsExcludedImportTypes: ['react'],
                'newlines-between': 'always',
                alphabetize: {
                    order: 'asc',
                    caseInsensitive: true
                }
            }
        ]
    }
};
