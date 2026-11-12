import InitECandidate.Solver.MemSafe.Ra.AttSi

/-!
# `run_attempt`, before `payload_header` (3): the two node DBs and `state_init` (`raS13 .. raS16`)
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Att
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry
open InitECandidate.Solver.MemSafe.Eb

variable {σ : Type}

def bNdb (Bsi B : Nat) : Nat := 1 + cNdb + (1 + cNdb + ((1 + Bsi + 0) + (0 + B)))

/-- The value `v` is a frozen node DB of the memory. -/
theorem zpre_tab : ∀ g ∈ Zpre, ¬ (tabW.contains g = true) := by
  intro g hg
  simp only [Zpre, List.mem_cons, List.not_mem_nil, or_false] at hg
  rcases hg with rfl | rfl | rfl | rfl | rfl <;> decide

theorem ev_ld_word {σ : Type} {s : State σ} {a : ExpHOL 64} {v : ValueHOL 64} (h : ev s (.load .one a) = some v) :
    ∃ x : BitVec 64, v = .val (.word x) := by
  obtain ⟨w, -, -, rfl⟩ := ev_load_one h
  rcases s.memory w with ⟨x⟩
  exact ⟨x, rfl⟩

theorem zpre_si : ∀ g ∈ Zpre, ¬ (siW.contains g = true) := by
  intro g hg
  simp only [Zpre, List.mem_cons, List.not_mem_nil, or_false] at hg
  rcases hg with rfl | rfl | rfl | rfl | rfl <;> decide

theorem zpre_sub : ∀ g, g ∈ Zpre → g ∈ Z1b := by
  intro g hg
  simp [Zpre, Z1b] at hg ⊢
  tauto

def RT (v : ValueHOL 64) : Gam → Ptrs → Mem → Prop := fun Γ _ m => ∃ T : BitVec 64, v = .val (.word T) ∧ Hooks.NdbR Γ m T

section ndb
variable {E : EbE σ} {si0 pl0 ptxs0 ntx0 nwd0 T1 T2 z bh0 nh0 : BitVec 64} {En : Env} {S : FS}
  {QT : Option (PanSemResultExact 64) → State σ → Prop}

theorem p1_ndb (hK : HypKeepG σ) (hE0 : ∀ o ∈ E.Γ0, KeepTy o.ty) (hQ : ∀ n, ResIns n QT)
    (hsi : En (nm "si") = some (.val (.word si0))) (hpl : En (nm "pl") = some (.val (.word pl0)))
    (hsub : ∀ f, S1a si0 pl0 ptxs0 ntx0 nwd0 T1 T2 z f → S f) (hT : Tidy Zpre S) (hS : SafeS S)
    {Bsi B : Nat} (hc : HypSiCost σ Bsi)
    (hnext : ∀ (En' : Env) (S' : FS) (bsw skw : BitVec 64), En' (nm "si") = some (.val (.word si0)) →
      En' (nm "pl") = some (.val (.word pl0)) → (∀ f, S f → S' f) → S' (Fct.gobj (nm "bs") bsw tBS) → S' (Fct.gobj (nm "sk_buf") skw tB64) →
      Tidy Z1b S' → SafeS S' → CW (PA E En' S') raS17 B QT) :
    CW (PA E En S) raS13 (bNdb Bsi B) QT := by
  have hc' : Inv.CalleeCostP σ guestCtx (nm "state_init")
      (fun vs s => ∃ Γ p, G guestC (HR σ) Γ s ∧ ptrsOf s = some p ∧ ArgsOK guestC Γ p (CcSig 3).params vs ∧
        CcPre SiPreC vs s Γ) Bsi := hc
  have hobj : S (Fct.obj si0 tSI 96) := hsub _ (by simp [S1a])
  unfold raS13
  refine cw_pre (P := PAX E En S (Rm (fun _ _ _ => True))) ?_ (fun s _ hh => pax_of_pa hh)
  refine cw_decCallX (RM := fun _ _ _ => True) (hQ _) cr_ndb (gwk_a (by decide)) (fun _ _ => False) RT
    (PreC := fun _ _ => True) (Inv.calleeCostP_of_calleeCost cc_ndb) (fun _ _ _ _ _ _ => trivial)
    ⟨?_, fun _ _ _ _ _ _ _ _ _ _ _ _ _ h => h, (tidy_gmiss hT zpre_a).1, (tidy_gmiss hT zpre_a).2⟩ ?_ ?_
  · intro s hpx vs hvs callee Γ p hr hL hR
    obtain ⟨v1, vs1, rfl, h1, hr1⟩ := evs_cons_inv hvs
    obtain ⟨v2, vs2, rfl, h2, hr2⟩ := evs_cons_inv hr1
    rw [evs_nil] at hr2
    cases hr2
    have hpa := pax_pa hpx
    have e1 := evI_ld (evI_add (evI_lv_pa hpa hsi) (evI_cw s 40)) v1 h1
    have e2 := evI_ld (evI_add (evI_lv_pa hpa hsi) (evI_cw s 48)) v2 h2
    subst e1 e2
    obtain ⟨o, ho, hb, ht, -⟩ := hL _ hobj
    exact ndbPre_state (ebRun_G (ebRun_loc hr callee (s.clock - 1))) ho hb ht
  · intro s vs callee v st Γ Γ' p p' hpx hvs hr hL hR hstp hq hsh
    exact ⟨fun f hf => hf.elim, hq.1⟩
  intro v1 hsh1
  refine cw_pre (P := PAX E (En.set (nm "nodedb") v1) S (Rm (RT v1))) ?_
    (fun t _ ht => pax_mono ht (fun _ _ h => h) (fun f hf => Or.inl hf))
  unfold raS14
  have hsi1 : (En.set (nm "nodedb") v1) (nm "si") = some (.val (.word si0)) := env_set_keep hsi (by decide)
  refine cw_decCallX (RM := RT v1) (hQ _) cr_ndb (gwk_a (by decide)) (fun _ _ => False)
    (fun v2 => fun Γ p m => RT v1 Γ p m ∧ RT v2 Γ p m)
    (PreC := fun _ _ => True) (Inv.calleeCostP_of_calleeCost cc_ndb) (fun _ _ _ _ _ _ => trivial)
    ⟨?_, fun _ _ _ _ _ _ _ _ _ _ _ _ _ h => h, (tidy_gmiss hT zpre_a).1, (tidy_gmiss hT zpre_a).2⟩ ?_ ?_
  · intro s hpx vs hvs callee Γ p hr hL hR
    obtain ⟨v1', vs1, rfl, h1, hr1⟩ := evs_cons_inv hvs
    obtain ⟨v2', vs2, rfl, h2, hr2⟩ := evs_cons_inv hr1
    rw [evs_nil] at hr2
    cases hr2
    have hpa := pax_pa hpx
    have e1 := evI_ld (evI_add (evI_lv_pa hpa hsi1) (evI_cw s 56)) v1' h1
    have e2 := evI_ld (evI_add (evI_lv_pa hpa hsi1) (evI_cw s 64)) v2' h2
    subst e1 e2
    obtain ⟨o, ho, hb, ht, -⟩ := hL _ hobj
    exact ndbPre_codes (ebRun_G (ebRun_loc hr callee (s.clock - 1))) ho hb ht
  · intro s vs callee v st Γ Γ' p p' hpx hvs hr hL hR hstp hq hsh
    obtain ⟨T1', hv1, hN1⟩ := hR
    exact ⟨fun f hf => hf.elim, ⟨T1', hv1, hq.2 T1' hN1⟩, hq.1⟩
  intro v2 hsh2
  refine cw_pre (P := PAX E ((En.set (nm "nodedb") v1).set (nm "codedb") v2) S
    (Rm (fun Γ p m => RT v1 Γ p m ∧ RT v2 Γ p m))) ?_
    (fun t _ ht => pax_mono ht (fun _ _ h => h) (fun f hf => Or.inl hf))
  unfold raS15
  have hsi2 : ((En.set (nm "nodedb") v1).set (nm "codedb") v2) (nm "si") = some (.val (.word si0)) :=
    env_set_keep hsi1 (by decide)
  have hn1 : ((En.set (nm "nodedb") v1).set (nm "codedb") v2) (nm "nodedb") = some v1 :=
    env_set_keep (env_set_self _ _ _) (by decide)
  have hn2 : ((En.set (nm "nodedb") v1).set (nm "codedb") v2) (nm "codedb") = some v2 := env_set_self _ _ _
  have key : ∀ (s : State σ) (vs : List (ValueHOL 64)) (callee : Locs) (Γ : Gam) (p : Ptrs),
      PA E ((En.set (nm "nodedb") v1).set (nm "codedb") v2) S s →
      evs s [lv (nm "nodedb"), .load .one (.op .add [lv (nm "parent"), cw 32]), lv (nm "codedb")] = some vs →
      RT v1 Γ p s.memory → RT v2 Γ p s.memory → Ini.StatePre vs (callEntryStateHOLFinite s callee) Γ := by
    intro s vs callee Γ p hpa hvs hR1 hR2
    obtain ⟨v1', vs1, rfl, h1, hr1⟩ := evs_cons_inv hvs
    obtain ⟨v2', vs2, rfl, h2, hr2⟩ := evs_cons_inv hr1
    obtain ⟨v3', vs3, rfl, h3, hr3⟩ := evs_cons_inv hr2
    rw [evs_nil] at hr3
    cases hr3
    have e1 := evI_lv_pa hpa hn1 v1' h1
    have e3 := evI_lv_pa hpa hn2 v3' h3
    obtain ⟨x, hx⟩ := ev_ld_word h2
    subst e1 e3 hx
    obtain ⟨Ta, hva, hNa⟩ := hR1
    obtain ⟨Tb, hvb, hNb⟩ := hR2
    cases hva
    cases hvb
    exact ⟨Ta, x, Tb, rfl, hNa, hNb⟩
  refine cw_callXE (RM := fun Γ p m => RT v1 Γ p m ∧ RT v2 Γ p m) (α := BitVec 64 × BitVec 64)
    cr_si (gwk_si (by decide)) (fun x f => f = Fct.gobj (nm "bs") x.1 tBS ∨ f = Fct.gobj (nm "sk_buf") x.2 tB64)
    hc' ?_ ⟨?_, fun _ _ _ _ _ _ _ _ _ _ _ _ _ h => h, (tidy_gmiss hT zpre_si).1, (tidy_gmiss hT zpre_si).2⟩ ?_ ?_
  · intro s hs hpx vs hvs callee
    obtain ⟨⟨Γ, p, hr, hL, hR⟩, hlk⟩ := hpx
    have hre := ebRun_loc hr callee (s.clock - 1)
    exact ⟨Γ, p, ebRun_G hre, ebRun_ptrs hre, argsOK_cc (by
      obtain ⟨v1', vs1, rfl, h1, hr1⟩ := evs_cons_inv hvs
      obtain ⟨v2', vs2, rfl, h2, hr2⟩ := evs_cons_inv hr1
      obtain ⟨v3', vs3, rfl, h3, hr3⟩ := evs_cons_inv hr2
      rw [evs_nil] at hr3
      cases hr3
      rfl), ebRun_jr hre, ⟨ebRun_ev hre, ebRun_cc hre⟩, p, ebRun_ptrs hre,
      key s vs callee Γ p ⟨⟨Γ, p, hr, hL⟩, hlk⟩ hvs hR.1 hR.2⟩
  · intro s hpx vs hvs callee Γ p hr hL hR
    exact key s vs callee Γ p (pax_pa hpx) hvs hR.1 hR.2
  · intro s vs callee v st Γ Γ' p p' hpx hvs hr hL hstp hq
    obtain ⟨-, ⟨bsw, hbs, hfb, hnb⟩, ⟨skw, hsk, hfk, hnk⟩, -, -, -⟩ := hq
    have hb : ∃ o ∈ Γ', o.base = bsw ∧ o.ty = tBS := by
      rcases hfb with h | h
      · exact absurd h (by omega)
      · exact h
    have hk' : ∃ o ∈ Γ', o.base = skw ∧ o.ty = tB64 := by
      rcases hfk with h | h
      · exact absurd h (by omega)
      · exact h
    refine ⟨(bsw, skw), fun f hf => ?_⟩
    rcases hf with rfl | rfl
    · exact ⟨hbs, hb⟩
    · exact ⟨hsk, hk'⟩
  intro x
  unfold raS16
  refine cw_seq (cw_hn hn_skip (costP_zero cost_skip)) ?_
  refine hnext _ _ x.1 x.2 ?_ ?_ ?_ ?_ ?_ ?_ ?_
  · exact env_set_keep (env_set_keep hsi (by decide)) (by decide)
  · exact env_set_keep (env_set_keep hpl (by decide)) (by decide)
  · exact fun f hf => Or.inl hf
  · exact Or.inr (Or.inl rfl)
  · exact Or.inr (Or.inr rfl)
  · refine ⟨fun g w t h => ?_, fun g w h => ?_⟩
    · rcases h with h | h | h
      · exact zpre_sub g (hT.1 g w t h)
      · cases h; simp [Z1b]
      · cases h; simp [Z1b]
    · rcases h with h | h | h
      · exact zpre_sub g (hT.2 g w h)
      · cases h
      · cases h
  · intro f hf
    rcases hf with hf | rfl | rfl
    · exact hS f hf
    · exact (kt_entry).1
    · exact (kt_entry).2.1

end ndb

end InitECandidate.Solver.MemSafe.Att
