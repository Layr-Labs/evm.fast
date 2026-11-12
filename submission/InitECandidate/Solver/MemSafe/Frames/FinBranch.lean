import InitECandidate.Solver.MemSafe.Frames.FinCopy

/-!
# `finish_child`: the parent's part `finB`

**`finB_hoare`**: from `BS … (Gas0 sw e') true` (after the switch), `finB` ends normally in
`BS … (GasB sw e e') false` (the parent's `RetOK` re-established, its gas raised at most by the
child's) or abnormally in `PAb` (no `EvmErr`, `G`).
-/

set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace InitECandidate.Solver.MemSafe.Frames
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

/-- `var x = v; k` with `x` not a local of `finish_child`. -/
theorem bs_dec {C : Cfg} {H : Hooks σ} (hH : HooksLawful C H) {tEV tCK : Nat} {P : Gam → Mem → Ptrs → Frame → Prop} {R : Gam → Mem → Frame → Frame → Prop} {sw : State σ}
    {e c e' c' : BitVec 64} {rest : List Frame} {L : Locs} {Gs Gs' : State σ → Prop}
    {spk spk' : Bool} {x : MlS} (hx : x ∉ finNames) {sh : ShapeHOL} {a : ExpHOL 64}
    {k : ProgHOL 64} (hGs : ∀ t : State σ, Gs t → ∀ l, Gs { t with locals := l })
    (hGs' : ∀ t : State σ, Gs' t → ∀ l, Gs' { t with locals := l })
    (hk : HoareG σ X (BS C H tEV tCK P R sw e c e' c' rest L Gs spk) k
      (fun ro u => (ro = none ∧ BS C H tEV tCK P R sw e c e' c' rest L Gs' spk' u) ∨
        (ro ≠ none ∧ PAb C H ro u))) :
    HoareG σ X (BS C H tEV tCK P R sw e c e' c' rest L Gs spk) (.dec x sh a k)
      (fun ro u => (ro = none ∧ BS C H tEV tCK P R sw e c e' c' rest L Gs' spk' u) ∨
        (ro ≠ none ∧ PAb C H ro u)) := by
  refine hoareG_dec fun s _ hbs v _ _ => hoareG_conseq hk (fun t _ ht => ?_) (fun r t _ _ h => ?_)
  · subst ht
    obtain ⟨hfl, Γu, hB, hrd, hsp, hgs⟩ := hbs
    refine ⟨fun y hy => ?_, Γu, finB_locals hH hB _, hrd, hsp, hGs s hgs _⟩
    have hxy : x ≠ y := fun h => hx (by rw [h]; exact hy)
    rw [lk_set_ne _ _ hxy]; exact hfl y hy
  · rcases h with ⟨h0, hfl, Γ2, hB2, hrd2, hsp2, hgs2⟩ | ⟨h0, hab⟩
    · refine Or.inl ⟨h0, fun y hy => ?_, Γ2, finB_locals hH hB2 _, hrd2, hsp2, hGs' t hgs2 _⟩
      have hxy : x ≠ y := fun h => hx (by rw [h]; exact hy)
      show (t.locals.resVarEq (x, s.locals.lookup x)).lookup y = L.lookup y
      rw [lookup_resVarEq_ne _ _ hxy]
      exact hfl y hy
    · exact Or.inr ⟨h0, pab_locals hH hab _⟩

section steps
variable {C : Cfg} {H : Hooks σ} {tEV tCK : Nat} {P : Gam → Mem → Ptrs → Frame → Prop} {R : Gam → Mem → Frame → Frame → Prop} {Ic : Gam → Mem → Nat → BitVec 64 → BitVec 64 → Prop} {W : FinGw} (Hy : FinHyps σ X C H tEV tCK P R Ic W)
  {sw : State σ} {e c e' c' : BitVec 64} {rest : List Frame} {L : Locs}

include Hy

/-- **The parent's part.** -/
theorem finB_hoare (hLc : L.lookup (nm "child") = some (.val (.word e))) {os osz : BitVec 64}
    (hLos : L.lookup (nm "out_start") = some (.val (.word os)))
    (hLosz : L.lookup (nm "out_size") = some (.val (.word osz)))
    (hout : osz = 0 ∨ os.toNat + osz.toNat ≤ (fld sw.memory e' 32).toNat)
    (hsp0 : (fld sw.memory e' 16).toNat < (fld sw.memory e' 232).toNat) :
    HoareG σ X (BS C H tEV tCK P R sw e c e' c' rest L (Gas0 sw e') true) finB
      (fun ro u => (ro = none ∧ BS C H tEV tCK P R sw e c e' c' rest L (GasB sw e e') false u) ∨
        (ro ≠ none ∧ PAb C H ro u)) := by
  have hH := (fin_hF Hy).hooks
  refine hoareG_ite (hoareG_pre ?_ fun u _ h => h.1) (hoareG_pre ?_ fun u _ h => h.1)
  · refine bs_dec hH (by decide) (fun t h l => h) (fun t h l => h) ?_
    exact hoareG_ite (hoareG_pre (finErr_hoare Hy hLc hsp0) fun u _ h => h.1)
      (hoareG_pre (finOk2_hoare Hy hLc hsp0) fun u _ h => h.1)
  · exact hoareG_seqA (hoareG_ite (hoareG_pre (finErr_hoare Hy hLc hsp0) fun u _ h => h.1)
      (hoareG_pre (finOk1_hoare Hy hLc hsp0) fun u _ h => h.1)) (finCopy_hoare Hy hLos hLosz hout)

end steps

end InitECandidate.Solver.MemSafe.Frames
