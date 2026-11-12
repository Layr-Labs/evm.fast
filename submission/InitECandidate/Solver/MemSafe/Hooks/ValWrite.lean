import InitECandidate.Solver.MemSafe.Hooks.RecSep

set_option autoImplicit false
set_option maxRecDepth 100000
set_option linter.unusedVariables false

/-!
# Stage 2b: a hook-aware store into a node's value slots keeps `G`

`G_write_val`: a store that changes only the value slice cells `k`, `k + 1` of a node object `o` of `Γ`
(`tNLEAF`: 6, 7; `tNBRANCH`: 20, 21) keeps `G` provided the new slice satisfies `VInR tVAL Γ`. The hook of
every other object is untouched (`recSep`); the hook of `o` is re-established (its path slice is
unchanged for a leaf).
-/

namespace InitECandidate.Solver.MemSafe.Hooks
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types

variable {σ : Type}

/-- The value slice slots of a node type. -/
def ValSlot (t k : Nat) : Prop := (t = tNLEAF ∧ k = 6) ∨ (t = tNBRANCH ∧ k = 20)

theorem valSlot_prot {t k : Nat} (h : ValSlot t k) (j : Nat) (hj : j = k ∨ j = k + 1) :
    (guestC.ty t).slot j = .prot := by
  rcases h with ⟨rfl, rfl⟩ | ⟨rfl, rfl⟩ <;> rcases hj with rfl | rfl <;> decide

theorem valSlot_node {t k : Nat} (h : ValSlot t k) : IsNodeTy t := by
  rcases h with ⟨rfl, -⟩ | ⟨rfl, -⟩
  · exact Or.inl rfl
  · exact Or.inr (Or.inr rfl)

theorem valSlot_heap {t k : Nat} (h : ValSlot t k) : (guestC.ty t).region = .heap := by
  rcases h with ⟨rfl, -⟩ | ⟨rfl, -⟩ <;> decide

theorem valSlot_ge {t k : Nat} (h : ValSlot t k) : 6 ≤ k := by
  rcases h with ⟨-, rfl⟩ | ⟨-, rfl⟩ <;> decide

theorem nibLeafD_mem {be : Bool} : nibLeafD ∈ recTab be := by simp [recTab]
theorem valLeafD_mem {be : Bool} : valLeafD ∈ recTab be := by simp [recTab]
theorem valBrD_mem {be : Bool} : valBrD ∈ recTab be := by simp [recTab]


theorem cell_zero (o : Obj) : o.cell 0 = o.base := by unfold Obj.cell; simp

theorem valSlot_has {t k : Nat} (h : ValSlot t k) {o : Obj} (ht : o.ty = t)
    (hsz : (guestC.ty o.ty).minSz ≤ o.size) : o.HasSlot k ∧ o.HasSlot (k + 1) := by
  rw [ht] at hsz
  rcases h with ⟨rfl, rfl⟩ | ⟨rfl, rfl⟩
  · have : (guestC.ty tNLEAF).minSz = 64 := by decide
    unfold Obj.HasSlot; omega
  · have : (guestC.ty tNBRANCH).minSz = 176 := by decide
    unfold Obj.HasSlot; omega

/-- **A store into a node's value slice keeps `G`.** -/
theorem G_write_val {Γ : Gam} {s : State σ} {mem : Mem}
    (hG : G guestC (guestHooksR (σ := σ)) Γ s) {o : Obj} (ho : o ∈ Γ) {k : Nat}
    (hv : ValSlot o.ty k)
    (hmod : ModifiesOnly (fun a => a = o.cell k ∨ a = o.cell (k + 1)) s.memory mem)
    (hV : VInR tVAL Γ (rd mem (o.cell k)) (rd mem (o.cell (k + 1)))) :
    G guestC (guestHooksR (σ := σ)) Γ { s with memory := mem } := by
  have hG0 := hG
  obtain ⟨p, hps, hord, hL, hF0, hT0, hGl, hW⟩ := hG
  have hGam := gamOK_of_layout hL
  have hsz : (guestC.ty o.ty).minSz ≤ o.size := (hL.1 o ho).2.2.2.1
  obtain ⟨hs1, hs2⟩ := valSlot_has hv rfl hsz
  have hk6 := valSlot_ge hv
  have hnode := valSlot_node hv
  refine Struct.G_of (D := fun a => a = o.cell k ∨ a = o.cell (k + 1)) guestHooksR_lawful
    guestHooksR_mono hG0 (p' := p) hps hord hL (Struct.ext_refl Γ) rfl rfl (fun _ _ => rfl)
    (fun _ _ _ => rfl) hmod ?_ ?_ ?_
  · intro o' ho' k' hk'
    by_cases hD : o'.cell k' = o.cell k ∨ o'.cell k' = o.cell (k + 1)
    · right
      rcases hD with hD | hD
      · obtain ⟨rfl, rfl⟩ := cell_inj hord hL ho' ho hk' hs1 hD
        rw [valSlot_prot hv _ (Or.inl rfl)]; trivial
      · obtain ⟨rfl, rfl⟩ := cell_inj hord hL ho' ho hk' hs2 hD
        rw [valSlot_prot hv _ (Or.inr rfl)]; trivial
    · exact Or.inl ⟨o', ho', rfl, rfl, hk', hD⟩
  · intro o' ho' tag htag
    refine Or.inl ⟨o', ho', rfl, rfl, ?_⟩
    rintro (hD | hD)
    · have := (cell_inj hord hL ho' ho (k := 0) (by have := (hL.1 o' ho').2.2.1; have := (hL.1 o' ho').2.1; unfold Obj.HasSlot; omega)
        hs1 (by rw [cell_zero]; exact hD)).2
      omega
    · have := (cell_inj hord hL ho' ho (k := 0) (by have := (hL.1 o' ho').2.2.1; have := (hL.1 o' ho').2.1; unfold Obj.HasSlot; omega)
        hs2 (by rw [cell_zero]; exact hD)).2
      omega
  · intro o' ho'
    by_cases e : o' = o
    · subst e
      right
      refine ⟨recBase_triv Γ _ o' (isNode_recTy hnode), fun e he het => ⟨ho', hGam, ?_⟩⟩
      have hold := fun (e' : RecD) (he' : e' ∈ recTab s.be) (het' : e'.ty = o'.ty) =>
        recHooks_guestR.get Γ s o' e' he' het' (hW o' ho')
      have hother : ∀ j, o'.HasSlot j → j ≠ k → j ≠ k + 1 → mem (o'.cell j) = s.memory (o'.cell j) := by
        intro j hj h1 h2
        refine hmod _ (fun hD => ?_)
        rcases hD with hD | hD
        · exact h1 (cell_inj hord hL ho' ho' hj hs1 hD).2
        · exact h2 (cell_inj hord hL ho' ho' hj hs2 hD).2
      have hvo := hv
      have hsz64 : ∀ t, o'.ty = t → t = tNLEAF → 64 ≤ o'.size := by
        intro t ht' htl
        have := hsz; rw [ht', htl] at this
        have h64 : (guestC.ty tNLEAF).minSz = 64 := by decide
        omega
      rcases hv with ⟨ht, hk⟩ | ⟨ht, hk⟩
      · subst hk
        have h64 := hsz64 _ ht rfl
        rcases recTab_leaf he (het.trans (by rw [ht])) with rfl | rfl
        · obtain ⟨-, -, hw⟩ := hold nibLeafD nibLeafD_mem (by rw [ht]; rfl)
          exact (nibLeafD.frame Γ s.memory mem o' (by rw [ht]; rfl) hw (fun a ha => by
            rcases ha with rfl | rfl
            · exact hother 4 (by unfold Obj.HasSlot; omega) (by decide) (by decide)
            · exact hother 5 (by unfold Obj.HasSlot; omega) (by decide) (by decide))).1
        · obtain ⟨-, -, hw⟩ := hold valLeafD valLeafD_mem (by rw [ht]; rfl)
          obtain ⟨h1, h2, -⟩ := hw
          exact ⟨h1, h2, hV⟩
      · subst hk
        rcases recTab_br he (het.trans (by rw [ht])) with rfl
        obtain ⟨-, -, hw⟩ := hold valBrD valBrD_mem (by rw [ht]; rfl)
        obtain ⟨h1, h2, -⟩ := hw
        exact ⟨h1, h2, hV⟩
    · left
      refine ⟨o', ho', rfl, rfl, fun a hfa hD => ?_⟩
      have hlive := (hL.1 o ho).2.2.2.2
      rw [valSlot_heap hv] at hlive
      simp only [Region.Live] at hlive
      have hordhp := hord.2.1
      have hin : o.lo ≤ a.toNat ∧ a.toNat < o.hi := by
        rcases hD with rfl | rfl
        · exact own_cell_in hs1 (by unfold Obj.HasSlot at hs1; omega)
        · exact own_cell_in hs2 (by unfold Obj.HasSlot at hs2; omega)
      exact recSep hGam ho ho' e hnode hfa hin

end InitECandidate.Solver.MemSafe.Hooks

#print axioms InitECandidate.Solver.MemSafe.Hooks.G_write_val
