import InitECandidate.Solver.MemSafe.Eb.GlTabs

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Eb
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe.Ptx (gwOnly pmW pmNames)

theorem sftc0_ok : sftChunk0.all (fun e => gwOnly sftW sftNames e.2.2.1) = true := by
  conv => lhs; cbv

theorem sftc0_valid : ∀ e ∈ sftChunk0, guestCode e.1 = some e.2 := by
  intro e he
  simp only [sftChunk0, List.mem_cons, List.not_mem_nil, or_false] at he
  rcases he with rfl | rfl | rfl | rfl
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 3) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 7) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 128) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 355) (by decide)) ⟨_, rfl⟩

end InitECandidate.Solver.MemSafe.Eb
