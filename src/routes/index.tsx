import { createFileRoute } from "@tanstack/react-router"
import { ModeToggle } from "@/components/mode-toggle"

export const Route = createFileRoute("/")({ component: App })

function App() {
  return (
    <div className="flex max-w-md min-w-0 flex-col gap-4 text-sm leading-loose">
      <ModeToggle />
    </div>
  )
}
