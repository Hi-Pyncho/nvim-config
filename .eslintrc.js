module.exports = {
  extends: [
    'eslint:recommended',
  ],
  rules: {
    indent: ['error', 2],
    'linebreak-style': ['error', 'windows'],
    quotes: ['error', 'single'],
    semi: ['error', 'always'],
    'no-empty': 'warn',
    'no-cond-assign': ['error', 'always'],
    'for-direction': 'off',
    'vue/multi-word-component-names': 'off',
    'no-debugger': 'off',
    'vue/no-setup-props-destructure': 'off',
    'no-unused-vars': ['error', {
      varsIgnorePattern: '^_',
      argsIgnorePattern: '^_',
    }],
    'max-lines': [
      'error',
      {
        max: 400,
        skipBlankLines: true,
        skipComments: true
      }
    ]
  },
  parserOptions: {
    ecmaVersion: 'latest'
  },
  env: {
    browser: true,
    node: true,
    es6: true,
  },
};
