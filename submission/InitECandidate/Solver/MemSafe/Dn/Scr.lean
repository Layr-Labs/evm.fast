import InitECandidate.Solver.MemSafe.Dn.Kit
import InitECandidate.Solver.Spec.Mpt.Leaves.BelowCommon

set_option autoImplicit false

/-!
# No new scratch objects

`ScrOld Γ Γ'`: every scratch-region object of `Γ'` has an object of `Γ` with the same base and
type. It is what lets the decoder's wrapper release its scratch window: after
`scratch_release(mark)` every scratch object of the post typing is an entry object, hence live.

* `scrOld_of_nf0`: a non-growing callee (`NewFresh Γ Γ' q q`).
* `scrOld_of_sp`: a callee that leaves `scratch_ptr` unchanged: its fresh cells are heap or frame
  memory, where no scratch object lies.
* `ctorFns_gw_scratch`: the node constructors (with `alloc`, `memzero`, `trap_with`) never write
  `scratch_ptr` (the global-write checker); `ctor_sp` gives the `FunSpec`.
-/

set_option maxRecDepth 100000
set_option cbv.warning false
set_option linter.unusedVariables false
set_option linter.unusedSectionVars false

namespace InitECandidate.Solver.MemSafe.Dn
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe

variable {σ : Type} {X : Ctx 64}

/-- Every scratch object of `Γ'` is (by base and type) an object of `Γ`. -/
def ScrOld (Γ Γ' : Gam) : Prop :=
  ∀ o ∈ Γ', (Types.guestC.ty o.ty).region = .scratch → ∃ o0 ∈ Γ, o0.base = o.base ∧ o0.ty = o.ty

theorem scrOld_refl (Γ : Gam) : ScrOld Γ Γ := fun o ho _ => ⟨o, ho, rfl, rfl⟩

theorem scrOld_trans {Γ1 Γ2 Γ3 : Gam} (h1 : ScrOld Γ1 Γ2) (h2 : ScrOld Γ2 Γ3) : ScrOld Γ1 Γ3 := by
  intro o ho hr
  obtain ⟨o2, ho2, hb2, ht2⟩ := h2 o ho hr
  obtain ⟨o1, ho1, hb1, ht1⟩ := h1 o2 ho2 (by rw [ht2]; exact hr)
  exact ⟨o1, ho1, hb1.trans hb2, ht1.trans ht2⟩

/-- A non-growing callee creates no object. -/
theorem scrOld_of_nf0 {Γ Γ' : Gam} {q q0 : Ptrs} (hL : Layout Types.guestC q0 Γ')
    (h : NewFresh Γ Γ' q q) : ScrOld Γ Γ' := by
  intro o ho _
  have h0 := (hL.1 o ho).2.2.1
  rcases h o ho o.base (le_refl _) (by simp only [Obj.hi, Obj.lo]; omega) with ⟨o0, ho0, hb, ht, -⟩ | hf
  · exact ⟨o0, ho0, hb, ht⟩
  · unfold Fresh at hf; omega

/-- A callee that keeps `scratch_ptr` creates no scratch object. -/
theorem scrOld_of_sp {Γ Γ' : Gam} {q q' : Ptrs} (hL : Layout Types.guestC q' Γ')
    (hord' : q'.Ordered) (h : NewFresh Γ Γ' q q') (hsp : q'.sp = q.sp) : ScrOld Γ Γ' := by
  intro o ho hr
  have hlive := (hL.1 o ho).2.2.2.2
  have h0 := (hL.1 o ho).2.2.1
  rw [hr] at hlive
  obtain ⟨hl1, hl2⟩ := hlive
  rcases h o ho o.base (le_refl _) (by simp only [Obj.hi, Obj.lo]; omega) with ⟨o0, ho0, hb, ht, -⟩ | hf
  · exact ⟨o0, ho0, hb, ht⟩
  · exfalso
    obtain ⟨a1, a2, a3, a4, a5, -⟩ := hord'
    simp only [Obj.lo] at hl1
    unfold Fresh at hf
    omega

/-! ## The node constructors keep `scratch_ptr` -/

def ctorFns : EntryList :=
  [fnEntry Guest.Software.guestFn_node_new_leaf, fnEntry Guest.Software.guestFn_node_new_ext,
   fnEntry Guest.Software.guestFn_node_new_branch, fnEntry Guest.Software.guestFn_node_new_hashed,
   fnEntry Guest.Software.guestFn_alloc, fnEntry Guest.Software.guestFn_memzero,
   fnEntry Guest.Software.guestFn_trap_with]

def ctorNames : List MlS := ctorFns.map Prod.fst

theorem ctorFns_valid : ∀ e ∈ ctorFns, guestCode e.1 = some e.2 := by
  intro e he
  simp only [ctorFns, List.mem_cons, List.not_mem_nil, or_false] at he
  rcases he with rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 256) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 257) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 258) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 255) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 7) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 17) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 3) (by decide)) ⟨_, rfl⟩

set_option maxHeartbeats 0 in
set_option cbv.maxSteps 4000000000 in
theorem ctorFns_gw_scratch :
    ctorFns.all (fun e => gwFreeB (nm "scratch_ptr") ctorNames e.2.2.1) = true := by decide_cbv

/-- A node constructor keeps `scratch_ptr`. -/
theorem ctor_sp (hC : X.code.lookup = guestCode) {f : MlS} (hf : ctorNames.contains f = true) :
    FunSpec σ X f (fun _ s _ t => t.globals.lookup gScratch = s.globals.lookup gScratch) :=
  funSpec_gw (σ := σ) (X := X) (by
    rw [hC]; exact closed_of_entries (chk := gwFreeB (nm "scratch_ptr")) ctorFns_valid
      ctorFns_gw_scratch) hf

end InitECandidate.Solver.MemSafe.Dn

#print axioms InitECandidate.Solver.MemSafe.Dn.scrOld_of_sp
#print axioms InitECandidate.Solver.MemSafe.Dn.ctor_sp
