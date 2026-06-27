import { execSync } from "node:child_process";

export function getCommitHash() {
	return execSync("git rev-parse --short HEAD").toString().trim();
}

export function getFullCommitHash() {
	return execSync("git rev-parse HEAD").toString().trim();
}
