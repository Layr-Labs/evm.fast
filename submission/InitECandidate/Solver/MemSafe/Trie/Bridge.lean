import InitECandidate.Solver.MemSafe.Trie.FillInv
import InitECandidate.Solver.Band.RootPre
import InitECandidate.Solver.MemSafe.Hooks.NodeFacts
import InitECandidate.Solver.MemSafe.Ins.DelCat

set_option autoImplicit false
set_option maxRecDepth 100000
set_option linter.unusedVariables false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# The bridge `G → TrieOK`, `LenStat`
-/

namespace InitECandidate.Solver.MemSafe.Trie
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Helpers
open InitECandidate.Solver.MemSafe.Types InitECandidate.Solver.MemSafe.Hooks
open InitECandidate.Solver.Spec.Mpt InitECandidate.Solver.Spec.Mpt.Leaves
open InitECandidate.Solver.Band (NdOf nodeTys node_facts ndShape_of_G ndDisj_of_G kbSep_of_G nsz_le_size)

variable {σ : Type}

abbrev HR : Hooks σ := Hooks.guestHooksR

theorem valTy_region : (guestC.ty tVAL).region = .heap := by rw [ty_VAL]; rfl

/-- A nonempty value slice of `VInR tVAL` lies in a heap object of type `tVAL`; its first aligned cell too. -/
theorem val_obj {Γ : Gam} {p : Ptrs} (hord : p.Ordered) (hL : Layout guestC p Γ) {vp vl : BitVec 64}
    (h : VInR tVAL Γ vp vl) (hne : vl ≠ 0) :
    ∃ x ∈ Γ, x.ty = tVAL ∧ heapBase ≤ (panByteAlignHOL vp).toNat ∧ x.base.toNat ≤ (panByteAlignHOL vp).toNat ∧
      (panByteAlignHOL vp).toNat < x.base.toNat + x.size ∧ x.base.toNat + x.size ≤ p.hp ∧
      vl.toNat ≤ 2 ^ 32 := by
  rcases h with h | ⟨x, hx, ht, h1, h2⟩
  · exact absurd h hne
  · obtain ⟨hal, hsz8, hpos, hmin, hlive⟩ := hL.1 x hx
    have hlive' : heapBase ≤ x.base.toNat ∧ x.base.toNat + x.size ≤ p.hp := by
      have := hlive
      rw [ht, valTy_region] at this
      exact this
    have hsz := (cell_toNat hord hL hx (k := 0) (by unfold Obj.HasSlot; omega))
    have hse : x.base.toNat + x.size ≤ scratchEnd := by unfold Obj.lo at hsz; exact hsz.2
    have h1' : x.base.toNat ≤ vp.toNat := h1
    have h2' : vp.toNat + vl.toNat ≤ x.base.toNat + x.size := h2
    have hse32 : scratchEnd < 2 ^ 32 := by decide
    have hvl1 : 0 < vl.toNat := Nat.pos_of_ne_zero (fun h => hne (BitVec.eq_of_toNat_eq (by simpa using h)))
    have hvl : vl.toNat ≤ 2 ^ 32 := by omega
    have hA : (panByteAlignHOL vp).toNat = vp.toNat / 8 * 8 := by
      unfold panByteAlignHOL
      have e : 2 ^ Nat.log2 (64 / 8) = 8 := by decide
      simp only [e, BitVec.toNat_ofNat]
      have := vp.isLt
      exact Nat.mod_eq_of_lt (by omega)
    have hal' : x.base.toNat % 8 = 0 := hal
    refine ⟨x, hx, ht, ?_, ?_, ?_, hlive'.2, hvl⟩
    · rw [hA]; omega
    · rw [hA]; omega
    · rw [hA]; omega

theorem kind_leaf_ty {Γ : Gam} {s : State σ} (hG : G guestC (HR (σ := σ)) Γ s) {o : Obj} (ho : o ∈ Γ)
    (ht : o.ty ∈ nodeTys) (h : rd s.memory o.base = 1) : o.ty = tNLEAF := by
  obtain ⟨-, -, -, -, -, hk⟩ := node_facts hG ho ht
  rcases hk with ⟨_, hr, _⟩ | ⟨hty, _, _⟩ | ⟨_, hr, _⟩ | ⟨_, hr, _⟩
  · exact absurd (hr.symm.trans h) (by decide)
  · exact hty
  · exact absurd (hr.symm.trans h) (by decide)
  · exact absurd (hr.symm.trans h) (by decide)

theorem kind_branch_ty {Γ : Gam} {s : State σ} (hG : G guestC (HR (σ := σ)) Γ s) {o : Obj} (ho : o ∈ Γ)
    (ht : o.ty ∈ nodeTys) (h : rd s.memory o.base = 3) : o.ty = tNBRANCH := by
  obtain ⟨-, -, -, -, -, hk⟩ := node_facts hG ho ht
  rcases hk with ⟨_, hr, _⟩ | ⟨_, hr, _⟩ | ⟨_, hr, _⟩ | ⟨hty, _, _⟩
  · exact absurd (hr.symm.trans h) (by decide)
  · exact absurd (hr.symm.trans h) (by decide)
  · exact absurd (hr.symm.trans h) (by decide)
  · exact hty

theorem tVAL_ne_node {t : Nat} (h : t ∈ nodeTys) : t ≠ tVAL := by
  simp only [nodeTys, List.mem_cons, List.not_mem_nil, or_false] at h
  rcases h with h | h | h | h <;> rw [h] <;> decide

theorem valSep_of_G {Γ : Gam} {s : State σ} (hG : G guestC (HR (σ := σ)) Γ s) {p : Ptrs}
    (hp : ptrsOf s = some p) : ValSep s (NdOf Γ) p.hp := by
  have hG0 := hG
  obtain ⟨p', hp', hord, hL, hF, hT, hGl, hW⟩ := hG0
  rw [hp] at hp'
  cases hp'
  rintro a ⟨o, ho, rfl, ht⟩
  refine ⟨fun h1 => ?_, fun h3 => ?_⟩
  · have hty := kind_leaf_ty hG ho ht h1
    have hv := Hooks.vIn_of_leaf hG ho hty
    intro hne
    obtain ⟨x, hx, hxt, hb, hlo, hhi, hhp, -⟩ := val_obj hord hL hv hne
    exact ⟨hb, by omega⟩
  · have hty := kind_branch_ty hG ho ht h3
    have hv := Hooks.vIn_of_branch hG ho hty
    intro hne
    obtain ⟨x, hx, hxt, hb, hlo, hhi, hhp, -⟩ := val_obj hord hL hv hne
    refine ⟨hb, by omega, ?_, ?_⟩
    · rintro b ⟨o2, ho2, rfl, ht2⟩ hcc
      have hn2 := nsz_le_size hG ho2 ht2
      have hge := nsz_ge (rd s.memory o2.base)
      have hne2 : o2 ≠ x := fun h => tVAL_ne_node ht2 (by rw [h]; exact hxt)
      obtain ⟨p2, hp2, -, -, hhi2, -⟩ := node_facts hG ho2 ht2
      rw [hp] at hp2
      cases hp2
      have hE := hord.2.1
      have hbnd : o2.base.toNat + 32 ≤ heapEnd := by omega
      have hcb := cacheCell_toNat hbnd hcc
      rcases layout_disj hL ho2 hx hne2 with h | h
      · unfold Obj.hi Obj.lo at h; omega
      · unfold Obj.hi Obj.lo at h; omega
    · have hB200 : (guestC.ty tB200).minSz = 200 := by decide
      have hB136 : (guestC.ty tB136).minSz = 136 := by decide
      rintro (⟨w, hw, h1, h2⟩ | ⟨w, hw, h1, h2⟩)
      · obtain ⟨v, hv, o3, ho3, hb3, ht3⟩ := hGl gKst (.ptr tB200) rfl
        rw [hw] at hv
        cases hv
        have hm3 := (hL.1 o3 ho3).2.2.2.1
        rw [ht3, hB200] at hm3
        have hne3 : o3 ≠ x := fun h => by
          have : o3.ty = tVAL := by rw [h]; exact hxt
          rw [ht3] at this
          exact absurd this (by decide)
        rcases layout_disj hL ho3 hx hne3 with h | h
        · unfold Obj.hi Obj.lo at h; rw [hb3] at h; omega
        · unfold Obj.hi Obj.lo at h; rw [hb3] at h; omega
      · obtain ⟨v, hv, o3, ho3, hb3, ht3⟩ := hGl gKpad (.ptr tB136) rfl
        rw [hw] at hv
        cases hv
        have hm3 := (hL.1 o3 ho3).2.2.2.1
        rw [ht3, hB136] at hm3
        have hne3 : o3 ≠ x := fun h => by
          have : o3.ty = tVAL := by rw [h]; exact hxt
          rw [ht3] at this
          exact absurd this (by decide)
        rcases layout_disj hL ho3 hx hne3 with h | h
        · unfold Obj.hi Obj.lo at h; rw [hb3] at h; omega
        · unfold Obj.hi Obj.lo at h; rw [hb3] at h; omega

theorem kind_ext_ty {Γ : Gam} {s : State σ} (hG : G guestC (HR (σ := σ)) Γ s) {o : Obj} (ho : o ∈ Γ)
    (ht : o.ty ∈ nodeTys) (h : rd s.memory o.base = 2) : o.ty = tNEXT := by
  obtain ⟨-, -, -, -, -, hk⟩ := node_facts hG ho ht
  rcases hk with ⟨_, hr, _⟩ | ⟨_, hr, _⟩ | ⟨hty, _, _⟩ | ⟨_, hr, _⟩
  · exact absurd (hr.symm.trans h) (by decide)
  · exact absurd (hr.symm.trans h) (by decide)
  · exact hty
  · exact absurd (hr.symm.trans h) (by decide)

theorem vlen_le {Γ : Gam} {s : State σ} (hG : G guestC (HR (σ := σ)) Γ s) {vp vl : BitVec 64}
    (h : VInR tVAL Γ vp vl) : vl.toNat ≤ 2 ^ 32 := by
  by_cases hz : vl = 0
  · subst hz; simp
  · obtain ⟨p, hp, hord, hL, -⟩ := hG
    obtain ⟨-, -, -, -, -, -, -, hv⟩ := val_obj hord hL h hz
    exact hv

theorem lenStat_of_G {Γ : Gam} {s : State σ} (hG : G guestC (HR (σ := σ)) Γ s) :
    LenStat (NdOf Γ) s := by
  rintro a ⟨o, ho, rfl, ht⟩
  refine ⟨fun h12 => ?_, fun h1 => ?_, fun h3 => ?_⟩
  · have hty : o.ty = tNLEAF ∨ o.ty = tNEXT := by
      rcases h12 with h | h
      · exact Or.inl (kind_leaf_ty hG ho ht h)
      · exact Or.inr (kind_ext_ty hG ho ht h)
    exact Ins.nIn_len_le (Hooks.nIn_of_node hG ho hty)
  · exact vlen_le hG (Hooks.vIn_of_leaf hG ho (kind_leaf_ty hG ho ht h1))
  · exact vlen_le hG (Hooks.vIn_of_branch hG ho (kind_branch_ty hG ho ht h3))

/-- **The bridge**: the trie facts and the length bounds of the node objects of `Γ`. -/
theorem trie_of_G {Γ : Gam} {s : State σ} (hG : G guestC (HR (σ := σ)) Γ s) {p : Ptrs}
    (hp : ptrsOf s = some p) : TrieOK s (NdOf Γ) p.hp ∧ LenStat (NdOf Γ) s :=
  ⟨⟨ndShape_of_G hG hp, ndDisj_of_G hG, kbSep_of_G hG hp, valSep_of_G hG hp⟩, lenStat_of_G hG⟩

end InitECandidate.Solver.MemSafe.Trie
