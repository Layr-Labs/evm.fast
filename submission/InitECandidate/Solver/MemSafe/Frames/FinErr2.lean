import InitECandidate.Solver.MemSafe.Frames.FinErr

/-!
# `finish_child`: the gas-slot writers and the failed-child branch

* `bs_gasCall`: a call whose exact effect writes only the parent's gas slots;
  `bs_icoe` (`incorporate_child_on_error`), `bs_credit` (`credit_state_gas_refund`).
* **`finErr_hoare`**: the branch of a failed child (`rollback_child_access`,
  `incorporate_child_on_error`, the new-account refund, `set_retdata`, `stack_push`).
-/

set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace InitECandidate.Solver.MemSafe.Frames
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

/-- Sequencing triples whose abnormal results satisfy a common post. -/
theorem hoareG_seqA {P R T : State σ → Prop} {a b : ProgHOL 64}
    {Pab : Option (PanSemResultExact 64) → State σ → Prop}
    (ha : HoareG σ X P a (fun ro u => (ro = none ∧ R u) ∨ (ro ≠ none ∧ Pab ro u)))
    (hb : HoareG σ X R b (fun ro u => (ro = none ∧ T u) ∨ (ro ≠ none ∧ Pab ro u))) :
    HoareG σ X P (.seq a b) (fun ro u => (ro = none ∧ T u) ∨ (ro ≠ none ∧ Pab ro u)) :=
  hoareG_seq ha (fun r t _ hr _ h => h.elim (fun h => absurd h.1 hr) (fun h => Or.inr h))
    (hoareG_pre hb fun u _ h => h.elim (fun h => h.2) (fun h => absurd rfl h.1))

section steps
variable {C : Cfg} {H : Hooks σ} {tEV tCK : Nat} {P : Gam → Mem → Ptrs → Frame → Prop} {R : Gam → Mem → Frame → Frame → Prop} {Ic : Gam → Mem → Nat → BitVec 64 → BitVec 64 → Prop} {W : FinGw} (Hy : FinHyps σ X C H tEV tCK P R Ic W)
  {sw : State σ} {e c e' c' : BitVec 64} {rest : List Frame} {L : Locs}

include Hy

/-- **A call writing only the parent's gas slots** (exact effect `Mf`). -/
theorem bs_gasCall {Gs Gs' : State σ → Prop} {f : MlS} {args : List (ExpHOL 64)}
    {Mf : List (ValueHOL 64) → Mem → Mem}
    (hf : FunSpec σ X f (fun vs s r t => Good (some r) → r = .returned (.val (.word 0)) ∧
      ∀ e0, gword s nmEv = some e0 → e0 = e' →
        t.globals = s.globals ∧ t.memory = Mf vs s.memory))
    (hmod : ∀ vs m, ModifiesOnly (fun a => ∃ k ∈ gasKs, a = e' + BitVec.ofNat 64 (8 * k)) m (Mf vs m))
    (hGs : ∀ s t vs, BS C H tEV tCK P R sw e c e' c' rest L Gs true s → evs s args = some vs →
      Gs s → t.memory = Mf vs s.memory → Gs' t) :
    HoareG σ X (BS C H tEV tCK P R sw e c e' c' rest L Gs true) (callD f args)
      (fun ro u => (ro = none ∧ BS C H tEV tCK P R sw e c e' c' rest L Gs' true u) ∨
        (ro ≠ none ∧ PAb C H ro u)) := by
  have hF := fin_hF Hy
  have hH := hF.hooks
  refine hoareG_callD (FunSpec.and hf (funSpec_dom _)) ?_ ?_
  · intro s _ hbs vs hvs callee v st ⟨hR, hd, hbe⟩ _
    obtain ⟨-, hE⟩ := hR (by simp [Good])
    obtain ⟨hfl, Γu, hB, hrd, hsp, hgs⟩ := hbs
    obtain ⟨hg, hm⟩ := hE e' hB.ev rfl
    have hBe := finB_entry hH hB callee
    obtain ⟨hB', hk⟩ := finB_driver hF Hy.xcfg Hy.evX Hy.msgTy Hy.pgJ hBe (by rw [hm]; exact hmod vs _) hg hd hbe
    have hks : ∀ k ∈ gasKs, 8 * k + 8 ≤ 280 := by decide
    have keepj : ∀ j ∈ evProtSlots, j ∉ gasKs →
        fld st.memory e' (8 * j) = fld s.memory e' (8 * j) :=
      fun j hj hjk => fin_slot_keep hF hBe hk hks (Or.inl rfl) hj fun _ => hjk
    refine Or.inl ⟨rfl, fun x hx => hfl x hx, Γu, finB_locals hH hB' _, ?_, fun _ => ?_, ?_⟩
    · exact retOK_ext (fun o ho => ⟨o, ho, rfl, rfl, le_refl _⟩)
        (keepj 18 (by simp [evProtSlots]) (by simp [gasKs]))
        (keepj 27 (by simp [evProtSlots]) (by simp [gasKs])) hrd
    · exact (keepj 2 (by simp [evProtSlots]) (by simp [gasKs])).trans (hsp rfl)
    · exact hGs s _ vs ⟨hfl, Γu, hB, hrd, hsp, hgs⟩ hvs hgs hm
  · intro s _ hbs vs hvs callee r st ⟨hR, _, _⟩ _ habn
    obtain ⟨rfl, -⟩ := hR (good_of_abn habn)
    exact absurd rfl (not_returned_of_abn habn _)

/-- The word of a one-word argument list. -/
def argW0 : List (ValueHOL 64) → BitVec 64
  | [.val (.word c)] => c
  | _ => 0

/-- `incorporate_child_on_error(child)`: the parent gains the child's `GAS_LEFT`. -/
theorem bs_icoe (hLc : L.lookup (nm "child") = some (.val (.word e))) :
    HoareG σ X (BS C H tEV tCK P R sw e c e' c' rest L (Gas0 sw e') true)
      (callD (nm "incorporate_child_on_error") [lv (nm "child")])
      (fun ro u => (ro = none ∧ BS C H tEV tCK P R sw e c e' c' rest L (GasB sw e e') true u) ∨
        (ro ≠ none ∧ PAb C H ro u)) := by
  refine bs_gasCall Hy (Mf := fun vs m => icoeMem m e' (argW0 vs)) ?_ (fun vs m => icoe_mod m e' _) ?_
  · refine FunSpec.mono (icoe_spec Hy.code) fun vs s r t hR hg => ?_
    obtain ⟨e0, c0, rfl, he0, hr, hgl, hm⟩ := hR hg
    refine ⟨hr, fun e1 he1 he1' => ⟨hgl, ?_⟩⟩
    rw [he0, Option.some.injEq] at he1
    rw [hm, he1, he1']; rfl
  · intro s t vs ⟨hfl, Γu, hB, _⟩ hvs ⟨g64, g192⟩ hm
    obtain ⟨v1, r1, rfl, h1, h2⟩ := evs_cons_inv hvs
    rw [evs_nil] at h2; cases h2
    rw [ev_lv, hfl _ (by simp [finNames]), hLc] at h1; cases h1
    have hg := icoe_gas s.memory e' e
    have c64 := hB.evr (e, c) (by simp) 8 (by simp [evProtSlots])
    simp only [show (8 * 8 : Nat) = 64 from rfl] at c64
    show (fld t.memory e' 64).toNat + (fld t.memory e' 192).toNat ≤ _
    rw [hm]
    simp only [argW0]
    rw [g64, g192, c64] at hg
    omega

/-- `credit_state_gas_refund(a)`: the parent's `GAS_LEFT + STATE_GAS_SPILLED` does not rise. -/
theorem bs_credit {a : ExpHOL 64} :
    HoareG σ X (BS C H tEV tCK P R sw e c e' c' rest L (GasB sw e e') true)
      (callD (nm "credit_state_gas_refund") [a])
      (fun ro u => (ro = none ∧ BS C H tEV tCK P R sw e c e' c' rest L (GasB sw e e') true u) ∨
        (ro ≠ none ∧ PAb C H ro u)) := by
  refine bs_gasCall Hy (Mf := fun vs m => creditMem m e' (argW0 vs)) ?_
    (fun vs m => creditMem_mod m e' _) ?_
  · refine FunSpec.mono (credit_spec Hy.code) fun vs s r t hR hg => ?_
    obtain ⟨e0, a0, rfl, he0, hr, hgl, hm⟩ := hR hg
    refine ⟨hr, fun e1 he1 he1' => ⟨hgl, ?_⟩⟩
    rw [he0, Option.some.injEq] at he1
    rw [hm, he1, he1']; rfl
  · intro s t vs _ _ hgs hm
    have := credit_gas s.memory e' (argW0 vs)
    unfold GasB at hgs ⊢
    rw [hm]
    omega

/-- **The failed-child branch.** -/
theorem finErr_hoare (hLc : L.lookup (nm "child") = some (.val (.word e)))
    (hsp0 : (fld sw.memory e' 16).toNat < (fld sw.memory e' 232).toNat) :
    HoareG σ X (BS C H tEV tCK P R sw e c e' c' rest L (Gas0 sw e') true) finErr
      (fun ro u => (ro = none ∧ BS C H tEV tCK P R sw e c e' c' rest L (GasB sw e e') false u) ∨
        (ro ≠ none ∧ PAb C H ro u)) := by
  have hGs0 : ∀ s st : State σ, Gas0 sw e' s → fld st.memory e' 64 = fld s.memory e' 64 →
      fld st.memory e' 192 = fld s.memory e' 192 → Gas0 sw e' { st with locals := s.locals } :=
    fun s st ⟨h1, h2⟩ k1 k2 => ⟨k1.trans h1, k2.trans h2⟩
  have hGsB : ∀ s st : State σ, GasB sw e e' s → fld st.memory e' 64 = fld s.memory e' 64 →
      fld st.memory e' 192 = fld s.memory e' 192 → GasB sw e e' { st with locals := s.locals } := by
    intro s st h k1 k2
    unfold GasB at h ⊢
    show (fld st.memory e' 64).toNat + (fld st.memory e' 192).toNat ≤ _
    rw [k1, k2]; exact h
  refine hoareG_seqA (bs_rollback Hy hLc hGs0) (hoareG_seqA (bs_icoe Hy hLc) (hoareG_seqA ?_
    (hoareG_seqA (bs_setret Hy hGsB) (bs_push Hy hsp0 hGsB))))
  refine hoareG_ite (hoareG_pre (bs_credit Hy) fun u _ h => h.1)
    (hoareG_skip fun u _ h => Or.inl ⟨rfl, h.1⟩)

end steps

end InitECandidate.Solver.MemSafe.Frames
