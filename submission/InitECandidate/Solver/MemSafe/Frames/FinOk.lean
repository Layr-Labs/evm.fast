import InitECandidate.Solver.MemSafe.Frames.FinErr2

/-!
# `finish_child`: the successful-child branches

* `bs_decCall`: `var x = f(args); k` for a callee writing no frame record (`address_to_u256`).
* **`finOk1_hoare`** (a call: `incorporate_child_on_success`, `set_retdata`, `stack_push`) and
  **`finOk2_hoare`** (a create: also `address_to_u256`).
-/

set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace InitECandidate.Solver.MemSafe.Frames
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

section steps
variable {C : Cfg} {H : Hooks σ} {tEV tCK : Nat} {P : Gam → Mem → Ptrs → Frame → Prop} {R : Gam → Mem → Frame → Frame → Prop} {Ic : Gam → Mem → Nat → BitVec 64 → BitVec 64 → Prop} {W : FinGw} (Hy : FinHyps σ X C H tEV tCK P R Ic W)
  {sw : State σ} {e c e' c' : BitVec 64} {rest : List Frame} {L : Locs}

include Hy

/-- `var x = f(args); k` for a callee writing no frame record, with `x` not a local of
`finish_child`. -/
theorem bs_decCall {Gs Gs' : State σ → Prop} {spk spk' : Bool} {x : MlS} (hx : x ∉ finNames)
    {sh : ShapeHOL} {f : MlS} {args : List (ExpHOL 64)} {sg : Sig} {k : ProgHOL 64}
    (hspec : SumSpecA σ X C H f sg (fun _ _ _ => True) (PWtopM tEV tCK []) FQ)
    (hgw : nmEv ∉ sg.gw ∧ nmCC ∉ sg.gw) (hgJ : JrOut (sg.gw)) (hps : ∀ pt ∈ sg.params, pt = .any)
    (hlen : ∀ (s : State σ) vs, evs s args = some vs → vs.length = sg.params.length)
    (hGs : ∀ s st : State σ, Gs s → fld st.memory e' 64 = fld s.memory e' 64 →
      fld st.memory e' 192 = fld s.memory e' 192 → ∀ l, Gs { st with locals := l })
    (hGs' : ∀ t : State σ, Gs' t → ∀ l, Gs' { t with locals := l })
    (hk : HoareG σ X (BS C H tEV tCK P R sw e c e' c' rest L Gs spk) k
      (fun ro u => (ro = none ∧ BS C H tEV tCK P R sw e c e' c' rest L Gs' spk' u) ∨
        (ro ≠ none ∧ PAb C H ro u))) :
    HoareG σ X (BS C H tEV tCK P R sw e c e' c' rest L Gs spk) (.decCall x sh f args k)
      (fun ro u => (ro = none ∧ BS C H tEV tCK P R sw e c e' c' rest L Gs' spk' u) ∨
        (ro ≠ none ∧ PAb C H ro u)) := by
  have hF := fin_hF Hy
  have hH := hF.hooks
  have hks : ∀ k ∈ ([] : List Nat), 8 * k + 8 ≤ 280 := by simp
  refine hoareG_decCall (sumSpecA_rel hspec) ?_ ?_
  · intro s _ hbs vs hvs callee v st hR _ _
    obtain ⟨hfl, Γu, hB, hrd, hsp, hgs⟩ := hbs
    have hBe := finB_entry hH hB callee
    obtain ⟨Γ', hB', hq, hpk, hext⟩ := finB_call hF Hy.xcfg Hy.evX hBe hR (by simp [Good]) (not_abortive_ret v)
      (fun p _ => argsOK_any hps (hlen s vs hvs)) trivial hks (by simp) hgw Hy.pgJ hgJ
      (fun a ha => absurd ha (argCells_any hps)) (fun _ hq => hq.1)
      (fun _ _ hk => fin_par_keep hF hBe hk hks (by simp))
    have keepj : ∀ j ∈ evProtSlots, fld st.memory e' (8 * j) = fld s.memory e' (8 * j) :=
      fun j hj => fin_slot_keep hF hBe hpk hks (Or.inl rfl) hj fun _ => by simp
    refine hoareG_conseq hk (fun t _ ht => ?_) (fun r t _ _ h => ?_)
    · subst ht
      refine ⟨fun y hy => ?_, Γ', finB_locals hH hB' _, ?_, fun h => ?_, ?_⟩
      · have hxy : x ≠ y := fun h => hx (by rw [h]; exact hy)
        rw [lk_set_ne _ _ hxy]; exact hfl y hy
      · exact retOK_ext hext (keepj 18 (by simp [evProtSlots])) (keepj 27 (by simp [evProtSlots])) hrd
      · exact (keepj 2 (by simp [evProtSlots])).trans (hsp h)
      · exact hGs s st hgs (keepj 8 (by simp [evProtSlots])) (keepj 24 (by simp [evProtSlots])) _
    · rcases h with ⟨h0, hfl', Γ2, hB2, hrd2, hsp2, hgs2⟩ | ⟨h0, hab⟩
      · refine Or.inl ⟨h0, fun y hy => ?_, Γ2, finB_locals hH hB2 _, hrd2, hsp2, hGs' t hgs2 _⟩
        show (t.locals.resVarEq (x, s.locals.lookup x)).lookup y = L.lookup y
        have hxy : x ≠ y := fun h => hx (by rw [h]; exact hy)
        rw [lookup_resVarEq_ne _ _ hxy]
        exact hfl' y hy
      · exact Or.inr ⟨h0, pab_locals hH hab _⟩
  · intro s _ hbs vs hvs callee r st hR _ habn
    refine Or.inr ⟨by simp, fun r' hr' hna => ?_⟩
    simp only [Option.some.injEq] at hr'
    subst hr'
    obtain ⟨hfl, Γu, hB, hrd, hsp, hgs⟩ := hbs
    have hBe := finB_entry hH hB callee
    obtain ⟨Γ', hB', hq, -, -⟩ := finB_call hF Hy.xcfg Hy.evX hBe hR (good_of_abn habn) hna
      (fun p _ => argsOK_any hps (hlen s vs hvs)) trivial hks (by simp) hgw Hy.pgJ hgJ
      (fun a ha => absurd ha (argCells_any hps)) (fun _ hq => hq.1)
      (fun _ _ hk => fin_par_keep hF hBe hk hks (by simp))
    exact ⟨hq.2, not_returned_of_abn habn, Γ', (G_locFree hH st _ _).mpr hB'.G⟩

omit Hy in
theorem gasB_locals {t : State σ} (h : GasB sw e e' t) (l : Locs) :
    GasB sw e e' { t with locals := l } := h

omit Hy in
theorem gasB_keep : ∀ s st : State σ, GasB sw e e' s → fld st.memory e' 64 = fld s.memory e' 64 →
    fld st.memory e' 192 = fld s.memory e' 192 → ∀ l, GasB sw e e' { st with locals := l } := by
  intro s st h k1 k2 l
  unfold GasB at h ⊢
  show (fld st.memory e' 64).toNat + (fld st.memory e' 192).toNat ≤ _
  rw [k1, k2]; exact h

/-- **A successful call.** -/
theorem finOk1_hoare (hLc : L.lookup (nm "child") = some (.val (.word e)))
    (hsp0 : (fld sw.memory e' 16).toNat < (fld sw.memory e' 232).toNat) :
    HoareG σ X (BS C H tEV tCK P R sw e c e' c' rest L (Gas0 sw e') true) finOk1
      (fun ro u => (ro = none ∧ BS C H tEV tCK P R sw e c e' c' rest L (GasB sw e e') false u) ∨
        (ro ≠ none ∧ PAb C H ro u)) :=
  hoareG_seqA (bs_icos Hy hLc) (hoareG_seqA (bs_setret Hy fun s st h k1 k2 => gasB_keep s st h k1 k2 _)
    (bs_push Hy hsp0 fun s st h k1 k2 => gasB_keep s st h k1 k2 _))

/-- **A successful create.** -/
theorem finOk2_hoare (hLc : L.lookup (nm "child") = some (.val (.word e)))
    (hsp0 : (fld sw.memory e' 16).toNat < (fld sw.memory e' 232).toNat) :
    HoareG σ X (BS C H tEV tCK P R sw e c e' c' rest L (Gas0 sw e') true) finOk2
      (fun ro u => (ro = none ∧ BS C H tEV tCK P R sw e c e' c' rest L (GasB sw e e') false u) ∨
        (ro ≠ none ∧ PAb C H ro u)) :=
  hoareG_seqA (bs_icos Hy hLc) (hoareG_seqA (bs_setret Hy fun s st h k1 k2 => gasB_keep s st h k1 k2 _)
    (bs_decCall Hy (by decide) Hy.au Hy.gwauE Hy.jau (sgA_any 1 _)
      (fun s vs hvs => by rw [evs_one_len hvs]; rfl) (gasB_keep) (fun t h l => h)
      (bs_push Hy hsp0 fun s st h k1 k2 => gasB_keep s st h k1 k2 _)))

end steps

end InitECandidate.Solver.MemSafe.Frames
