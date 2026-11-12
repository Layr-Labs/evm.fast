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

theorem tabc2_ok : tabChunk2.all (fun e => gwOnly tabW tabNames e.2.2.1) = true := by
  conv => lhs; cbv

theorem tabc2_valid : ∀ e ∈ tabChunk2, guestCode e.1 = some e.2 := by
  intro e he
  simp only [tabChunk2, List.mem_cons, List.not_mem_nil, or_false] at he
  rcases he with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 130) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 131) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 132) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 133) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 134) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 135) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 136) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 137) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 138) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 139) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 143) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 144) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 145) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 228) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 246) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 248) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 249) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 250) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 251) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 252) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 254) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 255) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 256) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 257) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 258) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 259) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 260) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 261) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 262) (by decide)) ⟨_, rfl⟩

end InitECandidate.Solver.MemSafe.Eb
