import InitECandidate.Solver.MemSafe.Ptx.GlTabs

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Ptx
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

theorem glc00_ok : glChunk00.all (fun e => gwOnly pmW pmNames e.2.2.1) = true := by
  conv => lhs; cbv

theorem glc00_valid : ∀ e ∈ glChunk00, guestCode e.1 = some e.2 := by
  intro e he
  simp only [glChunk00, List.mem_cons, List.not_mem_nil, or_false] at he
  rcases he with rfl
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 93) (by decide)) ⟨_, rfl⟩

end InitECandidate.Solver.MemSafe.Ptx
