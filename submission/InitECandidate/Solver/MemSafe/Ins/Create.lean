import InitECandidate.Solver.MemSafe.Ins.Branch

set_option autoImplicit false

/-!
# `_create_branch_from_two_leaves` at `guestHooksR`

* `valStore_G`: the value-pair store `st br + 160, v; st br + 168, vl` into a fresh branch (slots 20
  and 21, `scalar` today). **This is the one small lemma that changes when the value slots
  become `prot`** (it becomes a hook-aware store carrying `VIn`).
* `cbPart_G`: one of the two halves (`if l == 0 { value pair } else { new leaf, child store }`).
-/

set_option maxRecDepth 100000
set_option linter.unusedVariables false
set_option linter.unusedSectionVars false
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Ins
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Rec InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.Dn

variable {σ : Type} {X : Ctx 64}

def valPair (nv nvl br : MlS) : ProgHOL 64 :=
  .seq (.store (.op .add [lv br, cw 160]) (lv nv)) (.store (.op .add [lv br, cw 168]) (lv nvl))

/-- **The value-pair store** into slots 20 / 21 of a fresh `NBRANCH` object `B`: the hooked pair, the new
slice must be `VInR tVAL`; the cells are in the footprint because the block is fresh. -/
theorem valStore_G {sg : Sig} {vs : List (ValueHOL 64)} {s0 : State σ} {Γ0 : Gam} {p0 : Ptrs}
    (ha : ActOK (actOf Types.guestC (Hooks.guestHooksR (σ := σ)) sg [] vs s0 Γ0 p0) guestCtx)
    {kv : List (MlS × BitVec 64)} {nv nvl br : MlS} {V VL B : BitVec 64}
    (hv : (nv, V) ∈ kv) (hvl : (nvl, VL) ∈ kv) (hbr : (br, B) ∈ kv)
    {EΓ : Gam → Prop}
    (hEn : ∀ Γ, EΓ Γ → (∃ o ∈ Γ, o.base = B ∧ o.ty = Types.tNBRANCH) ∧
      Hooks.VInR Types.tVAL Γ V VL ∧ FrB p0 B 176)
    {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop} :
    HoareG σ guestCtx (GI (actOf Types.guestC (Hooks.guestHooksR (σ := σ)) sg [] vs s0 Γ0 p0)
        (LKV kv) (fun Γ _ _ => EΓ Γ))
      (valPair nv nvl br)
      (GP (actOf Types.guestC (Hooks.guestHooksR (σ := σ)) sg [] vs s0 Γ0 p0)
        (LKV kv) (fun Γ _ _ => EΓ Γ) Rv) := by
  unfold valPair
  refine gp_stPair0 (k := 20) rfl rfl rfl rfl (x := br) (B := B) (V1 := V) (V2 := VL)
    (fun m h => h _ hbr) (fun s hL => ev_lw (hL _ hv)) (fun s hL => ev_lw (hL _ hvl))
    (fun Γ q s hh hE => ?_)
  obtain ⟨⟨o, ho, hb, ht⟩, hV, hfr⟩ := hEn Γ hE
  obtain ⟨p1, hp1, hord, hLy, -⟩ := hh.1
  have hsz : (Types.guestC.ty o.ty).minSz ≤ o.size := (hLy.1 o ho).2.2.2.1
  rw [ht, Types.ty_NBRANCH] at hsz
  simp only [Types.nbranchTy] at hsz
  have hs1 : o.HasSlot 20 := by unfold Obj.HasSlot; omega
  have hs2 : o.HasSlot 21 := by unfold Obj.HasSlot; omega
  have hfr' : FrB p0 o.base 176 := by rw [hb]; exact hfr
  exact ⟨o, ho, hb, Or.inr ⟨ht, rfl⟩, hV, foot_of_fresh hh ho hs1 (by omega) hfr',
    foot_of_fresh hh ho hs2 (by omega) hfr'⟩

def cbPart (nk nl nv nvl nlf br : MlS) : ProgHOL 64 :=
  .ite (.cmp .equal (lv nl) (cw 0)) (valPair nv nvl br) (cbLeaf nk nl nv nvl nlf br)

theorem cbPart_G {sg : Sig} (hsg : sg.grows = true)
    {vs : List (ValueHOL 64)} {s0 : State σ} {Γ0 : Gam} {p0 : Ptrs}
    (ha : ActOK (actOf Types.guestC (Hooks.guestHooksR (σ := σ)) sg [] vs s0 Γ0 p0) guestCtx)
    {kv : List (MlS × BitVec 64)} {nk nl nv nvl nlf br : MlS} {K Lw V VL B : BitVec 64}
    (hk : (nk, K) ∈ kv) (hl : (nl, Lw) ∈ kv) (hv : (nv, V) ∈ kv) (hvl : (nvl, VL) ∈ kv)
    (hbr : (br, B) ∈ kv) (hf : ∀ p ∈ kv, p.1 ≠ nlf)
    {EΓ : Gam → Prop}
    (hEn : ∀ Γ, EΓ Γ → NIn Γ K Lw ∧ Hooks.VInR Types.tVAL Γ V VL ∧
      (∃ o ∈ Γ, o.base = B ∧ o.ty = Types.tNBRANCH) ∧ FrB p0 B 176)
    (hEx : ∀ Γ Γ', EΓ Γ → Ext Γ Γ' → EΓ Γ')
    {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop} :
    HoareG σ guestCtx (GI (actOf Types.guestC (Hooks.guestHooksR (σ := σ)) sg [] vs s0 Γ0 p0)
        (LKV kv) (fun Γ _ _ => EΓ Γ))
      (cbPart nk nl nv nvl nlf br)
      (GP (actOf Types.guestC (Hooks.guestHooksR (σ := σ)) sg [] vs s0 Γ0 p0)
        (LKV kv) (fun Γ _ _ => EΓ Γ) Rv) := by
  unfold cbPart
  refine hoareG_ite (hoareG_pre (valStore_G ha hv hvl hbr (fun Γ h => ⟨(hEn Γ h).2.2.1, (hEn Γ h).2.1, (hEn Γ h).2.2.2⟩)) (fun s _ h => h.1)) ?_
  by_cases hLw : Lw = 0
  · refine hoareG_false fun s _ h => ?_
    have := Spec.Mpt.Dec.ne_of_else (ev_lw (h.1.1 _ hl)) h.2
    exact this (by simpa using hLw)
  · exact hoareG_pre (cbLeaf_G hsg ha hk hl hv hvl hbr hf hLw (fun Γ h => ⟨(hEn Γ h).1, (hEn Γ h).2.1, (hEn Γ h).2.2.1⟩) hEx) (fun s _ h => h.1)

end InitECandidate.Solver.MemSafe.Ins

#print axioms InitECandidate.Solver.MemSafe.Ins.valStore_G
#print axioms InitECandidate.Solver.MemSafe.Ins.cbPart_G
