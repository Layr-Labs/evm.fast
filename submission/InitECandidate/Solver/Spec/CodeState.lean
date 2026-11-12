import InitECandidate.Solver.Spec.GlobalFree
import InitECandidate.Solver.Spec.CodeRlp

/-!
# `state_restore` and the global footprint of the `htab` writers

* `code_state_restore`: the body of `state_restore` (`guest/src/state.pnk`), certified
  against `guestCode` by `cbv`.
* `htabFns`: the code entries of `htab_set`, `htab_del` and everything they call
  (12 functions, `htabFns_valid`); `htabFns_check` (kernel evaluation by `decide_cbv`)
  shows none of them writes the global `journal_n` and the set is closed under calls, so
  `htab_gwClosed : GwClosed "journal_n" htabNames guestCode`.
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option cbv.warning false

namespace InitECandidate.Solver.Spec
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost

/-! ## `state_restore` -/

def jn : MlS := nm "journal_n"

/-- `journal_n = journal_n - 1; var r = journal + journal_n * 32; var t = lds 1 r;
var key = lds 1 (r + 8); if lds 1 (r + 16) != 0 { htab_set(t, key, lds 1 (r + 24)) }
else { htab_del(t, key) }` -/
def restoreLoopBody : ProgHOL 64 :=
  .seq (.assign .global (nm "journal_n") (.op .sub [gv (nm "journal_n"), cw 1]))
    (.dec (nm "r") .one (.op .add [gv (nm "journal"), .panop .mul [gv (nm "journal_n"), cw 32]])
      (.dec (nm "t") .one (.load .one (lv (nm "r")))
        (.dec (nm "key") .one (.load .one (.op .add [lv (nm "r"), cw 8]))
          (.ite (.cmp .notEqual (.load .one (.op .add [lv (nm "r"), cw 16])) (cw 0))
            (callD (nm "htab_set")
              [lv (nm "t"), lv (nm "key"), .load .one (.op .add [lv (nm "r"), cw 24])])
            (callD (nm "htab_del") [lv (nm "t"), lv (nm "key")])))))

def restoreCond : ExpHOL 64 := .cmp .lower (lv (nm "snap")) (gv (nm "journal_n"))

def restoreBody : ProgHOL 64 := .seq (.while restoreCond restoreLoopBody) (.return (cw 0))

theorem entry_state_restore : fnEntry Guest.Software.guestFn_state_restore =
    (nm "state_restore", [(nm "snap", .one)], restoreBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_state_restore :
    guestCode (nm "state_restore") = some ([(nm "snap", .one)], restoreBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 359) (by decide)) ⟨_, rfl⟩
    entry_state_restore

/-! ## The `htab` writers do not write `journal_n` -/

/-- Code entries of `htab_set`, `htab_del` and their transitive callees. -/
def htabFns : List (MlS × (List (MlS × ShapeHOL) × ProgHOL 64 × ShapeHOL)) :=
  [fnEntry Guest.Software.guestFn_htab_set, fnEntry Guest.Software.guestFn_htab_del,
   fnEntry Guest.Software.guestFn_htab_find_leaf, fnEntry Guest.Software.guestFn_memeq,
   fnEntry Guest.Software.guestFn_htab_first_diff, fnEntry Guest.Software.guestFn_htab_new_internal,
   fnEntry Guest.Software.guestFn_htab_new_leaf, fnEntry Guest.Software.guestFn_htab_new_node,
   fnEntry Guest.Software.guestFn_memcpy, fnEntry Guest.Software.guestFn_htab_grow,
   fnEntry Guest.Software.guestFn_alloc, fnEntry Guest.Software.guestFn_trap_with]

def htabNames : List MlS := htabFns.map Prod.fst

theorem entry_valid {d : Flapjack.Decl (BitVec 64)} (hd : d ∈ Guest.Software.guestAst)
    (hf : ∃ fd, d = .function fd) : guestCode (fnEntry d).1 = some (fnEntry d).2 :=
  code_of_entry hd hf rfl

theorem htabFns_valid : ∀ e ∈ htabFns, guestCode e.1 = some e.2 := by
  intro e he
  simp only [htabFns, List.mem_cons, List.not_mem_nil, or_false] at he
  rcases he with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 138) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 139) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 131) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 18) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 130) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 136) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 135) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 134) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 16) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 137) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 7) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 3) (by decide)) ⟨_, rfl⟩

set_option maxHeartbeats 0 in
set_option cbv.maxSteps 4000000000 in
/-- Kernel check: no listed body writes `journal_n`, and each calls only listed functions. -/
theorem htabFns_check : htabFns.all (fun e => gwFreeB jn htabNames e.2.2.1) = true := by
  decide_cbv

theorem htab_gwClosed : GwClosed jn htabNames guestCode := by
  intro f hf ps b rs hcode
  have hmem : f ∈ htabNames := List.contains_iff_mem.mp hf
  obtain ⟨e, he, rfl⟩ := List.mem_map.mp hmem
  have hv := htabFns_valid e he
  rw [hv] at hcode
  have hb : e.2.2.1 = b := by
    have := Option.some.inj hcode
    rw [this]
  rw [← hb]
  exact List.all_eq_true.mp htabFns_check e he

theorem htab_set_mem : htabNames.contains (nm "htab_set") = true := by decide_cbv
theorem htab_del_mem : htabNames.contains (nm "htab_del") = true := by decide_cbv

end InitECandidate.Solver.Spec
