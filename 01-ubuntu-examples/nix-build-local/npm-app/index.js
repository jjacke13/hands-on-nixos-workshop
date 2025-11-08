const chalk = require('chalk');
const figlet = require('figlet');

console.log(
  chalk.green(
    figlet.textSync('Nix + Node', { horizontalLayout: 'full' })
  )
);

console.log(chalk.blue('Hello from javascript built with Nix!'));