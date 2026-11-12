import InitECandidate.Solver.MemSafe.Hooks.RecWs

set_option autoImplicit false

/-!
# The code-slice record hook `cslD` (EcoHyp; stage 2a)

A code-write table value points to a 16-byte record `<code ptr, code len>` made by `set_code`
(`sl = alloc(16); st sl, code; st sl + 8, code_len`). The record invariant bounds the length:
`(rd m (o.cell 1)).toNat ≤ 2^32` (the callers write `0`, `23` or `n ≤ MAX_CODE_SIZE = 65536`).

Descriptor `cslTy := ⟨.heap, [.scalar, .prot], .prot, 16⟩` at id `tCSL = 54` (`Types.lean`).
-/

namespace InitECandidate.Solver.MemSafe.Hooks
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types


def CslW (_Γ : Gam) (m : Mem) (o : Obj) : Prop :=
  16 ≤ o.size ∧ o.lo + 16 ≤ heapEnd ∧ (rd m (o.cell 1)).toNat ≤ 2 ^ 32

def cslFp (_Γ : Gam) (_m : Mem) (o : Obj) (a : BitVec 64) : Prop := a = o.cell 1

theorem recTy_tCSL : RecTyOK tCSL := by decide

theorem csl_prot : (guestC.ty tCSL).slot 1 = .prot := by decide

theorem csl_cells (Γ : Gam) (m : Mem) (o : Obj) (a : BitVec 64) (_hG : GamOK Γ) (ho : o ∈ Γ)
    (ht : o.ty = tCSL) (hw : CslW Γ m o) (hf : cslFp Γ m o a) :
    ∃ x ∈ Γ, RecTyOK x.ty ∧ ∃ k, x.HasSlot k ∧ (guestC.ty x.ty).slot k = .prot ∧ a = x.cell k ∧
      x.lo ≤ a.toNat ∧ a.toNat < x.hi := by
  obtain ⟨hs, hlo, -⟩ := hw
  subst hf
  have e := cellN (x := o) (k := 1) (by have := heapEnd_lt; omega)
  refine ⟨o, ho, ht ▸ recTy_tCSL, 1, by unfold Obj.HasSlot; omega, by rw [ht]; exact csl_prot,
    rfl, by omega, ?_⟩
  rw [e]; unfold Obj.hi; unfold Obj.lo at hlo ⊢; omega

theorem csl_frame (Γ : Gam) (m m' : Mem) (o : Obj) (_ht : o.ty = tCSL) (hw : CslW Γ m o)
    (hfp : ∀ a, cslFp Γ m o a → m' a = m a) : CslW Γ m' o ∧ cslFp Γ m' o = cslFp Γ m o := by
  have e1 : rd m' (o.cell 1) = rd m (o.cell 1) := rd_congr (hfp _ rfl)
  obtain ⟨h1, h2, h3⟩ := hw
  exact ⟨⟨h1, h2, by rw [e1]; exact h3⟩, rfl⟩

theorem csl_mono (Γ Γ' : Gam) (m : Mem) (p : Ptrs) (o o' : Obj) (hL : Layout guestC p Γ')
    (hx : Ext Γ Γ') (ho : o ∈ Γ) (ho' : o' ∈ Γ') (hb : o'.base = o.base) (_ht' : o'.ty = o.ty)
    (_ht : o.ty = tCSL) (hw : CslW Γ m o) : CslW Γ' m o' := by
  obtain ⟨h1, h2, h3⟩ := hw
  obtain ⟨o'', ho'', hb'', -, hs''⟩ := hx o ho
  have e : o'' = o' := gam_base_eq (gamOK_of_layout hL) ho'' ho' (hb''.trans hb.symm)
  subst e
  have hlo : o''.lo = o.lo := by unfold Obj.lo; rw [hb]
  have hc : o''.cell 1 = o.cell 1 := by unfold Obj.cell; rw [hb]
  exact ⟨by omega, by rw [hlo]; exact h2, by rw [hc]; exact h3⟩

theorem csl_shrink (Γ Γs : Gam) (m : Mem) (o : Obj) (_hsub : ∀ o' ∈ Γs, o' ∈ Γ) (_ho : o ∈ Γs)
    (_ht : o.ty = tCSL) (hw : CslW Γ m o)
    (_hc : ∀ x ∈ Γ, (fun (_ : Gam) (_ : Mem) (_ : Obj) (_ : BitVec 64) => False) Γ m o x.base → x ∈ Γs) :
    CslW Γs m o := hw

/-- **The code-slice record entry.** -/
def cslD : RecD where
  ty := tCSL
  wf := CslW
  fp := cslFp
  ref := fun _ _ _ _ => False
  hty := recTy_tCSL
  cells := csl_cells
  frame := csl_frame
  mono := csl_mono
  shrink := csl_shrink
  refHeap := fun _ _ _ _ _ _ _ _ _ hr => hr.elim

end InitECandidate.Solver.MemSafe.Hooks

#print axioms InitECandidate.Solver.MemSafe.Hooks.cslD
