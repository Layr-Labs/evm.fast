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

theorem ptc0_ok : ptChunk0.all (fun e => gwOnly ptW ptNames e.2.2.1) = true := by
  conv => lhs; cbv

theorem ptc0_valid : ∀ e ∈ ptChunk0, guestCode e.1 = some e.2 := by
  intro e he
  simp only [ptChunk0, List.mem_cons, List.not_mem_nil, or_false] at he
  rcases he with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 34) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 127) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 315) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 317) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 318) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 319) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 320) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 321) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 322) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 323) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 324) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 325) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 326) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 327) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 328) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 329) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 331) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 332) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 333) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 334) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 335) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 336) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 337) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 338) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 339) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 340) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 341) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 343) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 344) (by decide)) ⟨_, rfl⟩

end InitECandidate.Solver.MemSafe.Eb
