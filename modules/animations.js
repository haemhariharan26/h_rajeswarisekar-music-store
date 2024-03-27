export function startLoader() {
  gsap.to(".loader", {
    opacity: 0,
    duration: 2, // Duration of the animation in seconds
  });
}
