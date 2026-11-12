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

theorem glc15_ok : glChunk15.all (fun e => gwOnly pmW pmNames e.2.2.1) = true := by
  conv => lhs; cbv

theorem glc15_valid : ∀ e ∈ glChunk15, guestCode e.1 = some e.2 := by
  intro e he
  simp only [glChunk15, List.mem_cons, List.not_mem_nil, or_false] at he
  rcases he with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 8) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 52) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 69) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 122) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 166) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 468) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 487) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 492) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 508) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 542) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 543) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 555) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 573) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 600) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 603) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 637) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 639) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 673) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 717) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 719) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 731) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 753) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 755) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 766) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 821) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 826) (by decide)) ⟨_, rfl⟩

end InitECandidate.Solver.MemSafe.Ptx
