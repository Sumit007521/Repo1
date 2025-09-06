const core = require('@actions/core');
const github = require('@actions/github');
const exec = require('@actions/exec');
const path = require('path');

const repo = core.getInput('repo', { required: true });

async function run() {
  try {
    core.info(`My Repo: ${repo}`);
    // Optional: pass arguments to your script
    const scriptPath =  path.join(__dirname, 'script.sh');
    const options = {}; // You can add listeners or env here if needed

    await exec.exec('bash', [scriptPath], options);

  } catch (error) {
    core.setFailed(`Action failed: ${error.message}`);
  }
}

run();
