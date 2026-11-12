import InitECandidate.Solver.MemSafe.Wg.CostGpr1

/-!
# Wg: cost of `process_general_purpose_requests`, a system call with its append (cost and walk together)
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Wg
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry
open InitECandidate.Solver.MemSafe.Eb

variable {σ : Type}

section cg2
variable {E : EbE σ}

theorem gp_ite_app {Ecur : Env} {Sk : FS} {bo0 rq0 a1 a2 a3 a4 bs ba bk bi bs2 sk kx out c : BitVec 64} {o : MlS} {t m : Nat}
    (hm : m ≤ 4) (hk : kx.toNat ≤ m) (hgw : gword E.s0 (nm "bo") = some bo0)
    (hrq : rd E.s0.memory (bo0 + BitVec.ofNat 64 56) = rq0)
    (hbase : ∀ f, GS E.Γ0 E.s0 bo0 rq0 a1 a2 a3 a4 bs ba bk bi bs2 sk f → Sk f)
    (hAv : Avoid Sk E.Γ0 E.s0 (GprD E.s0) [bo0 + BitVec.ofNat 64 56]) (hT : Tidy zGpr Sk) :
    Hoare σ guestCtx (PA E (Ecur.set o (.val (.word out))) (fun g => SkX Sk bo0 kx g ∨ PucNF (.val (.word out)) c g))
      (.ite (.cmp .lower (cw 0) (.load .one (.op .add [lv o, cw 48])))
        (callD (nm "requests_append") [cw t, .load .one (.op .add [lv o, cw 40]), .load .one (.op .add [lv o, cw 48])])
        .skip)
      (fun r t' => r = none ∧ TQ E (Ecur.set o (.val (.word out))) Sk bo0 (m + 1) t') := by
  refine hn_ite (c := .cmp .lower (cw 0) (.load .one (.op .add [lv o, cw 48])))
    (P := PA E (Ecur.set o (.val (.word out))) (fun g => SkX Sk bo0 kx g ∨ PucNF (.val (.word out)) c g))
    (Q := TQ E (Ecur.set o (.val (.word out))) Sk bo0 (m + 1)) ?_ ?_
  · refine hn_pre (hn_post (gp_append (E := E) (En := Ecur.set o (.val (.word out))) (Sk := Sk)
      (Ex := PucNF (.val (.word out)) c) (m := m) (kx := kx)
      (args := [cw t, .load .one (.op .add [lv o, cw 40]), .load .one (.op .add [lv o, cw 48])]) (bo0 := bo0) (rq0 := rq0)
      (a1 := a1) (a2 := a2) (a3 := a3) (a4 := a4) (bs := bs) (ba := ba) (bk := bk) (bi := bi) (bs2 := bs2) (sk := sk)
      hm hk hgw hrq hbase hAv hT ?_) (fun t _ h => h)) (fun s' _ h => h.1)
    intro s' hs' vs hvs
    obtain ⟨v1, vs1, rfl, h1', hr1⟩ := evs_cons_inv hvs
    obtain ⟨v2, vs2, rfl, h2', hr2⟩ := evs_cons_inv hr1
    obtain ⟨v3, vs3, rfl, h3', hr3⟩ := evs_cons_inv hr2
    rw [evs_nil] at hr3
    cases hr3
    rw [ev_cw] at h1'
    cases h1'
    obtain ⟨d, rfl⟩ := Eb.ev_load_word h2'
    have hcell : (fun g => SkX Sk bo0 kx g ∨ PucNF (.val (.word out)) c g) (Fct.cellv (out + BitVec.ofNat 64 48) c) :=
      Or.inr (Or.inr (Or.inl ⟨out, rfl, rfl⟩))
    have e3 := evI_ld_cellv hs' (evI_add (evI_lv_pa hs' (env_set_self _ _ _)) (evI_cw s' 48)) hcell v3 h3'
    subst e3
    obtain ⟨Γ', p', hh⟩ := holds_of_pa hs' (Or.inr (Or.inr (Or.inr rfl)) :
      (fun g => SkX Sk bo0 kx g ∨ PucNF (.val (.word out)) c g) (Fct.prop (c.toNat < 2 ^ 32)))
    exact ⟨_, d, c, rfl, hh⟩
  · refine hoare_pre (hoare_skip (fun s' _ h => ⟨rfl, kx, by omega, pa_mono h.1 (fun _ _ h => h) (fun f hf => Or.inl hf)⟩))
      (fun s hs h => h)

theorem cw_gp_csr_app {Bcsr Brest : Nat} {Ecur : Env} {Sk : FS} {bo0 rq0 a1 a2 a3 a4 bs ba bk bi bs2 sk aX : BitVec 64}
    {o X : MlS} {t m : Nat} {rest : ProgHOL 64} {QT : Option (PanSemResultExact 64) → State σ → Prop}
    (hK : HypKeepG σ) (hE0 : ∀ o ∈ E.Γ0, KeepTy o.ty)
    (hCsr : CallR (σ := σ) (nm "process_checked_system_transaction") CsrPreW (fun _ _ _ _ => False) CsrQW)
    (hCsrC : HypCsrCostW σ Bcsr)
    (hm : m ≤ 4) (hgw : gword E.s0 (nm "bo") = some bo0) (hrq : rd E.s0.memory (bo0 + BitVec.ofNat 64 56) = rq0)
    (hbase : ∀ f, GS E.Γ0 E.s0 bo0 rq0 a1 a2 a3 a4 bs ba bk bi bs2 sk f → Sk f)
    (hAv : Avoid Sk E.Γ0 E.s0 (GprD E.s0) [bo0 + BitVec.ofNat 64 56]) (hT : Tidy zGpr Sk) (hS : SafeS Sk)
    (hbal : BalS Sk) (hX : Sk (Fct.gobj X aX tB24)) (hQT : ResIns o QT)
    (hrest : ∀ out : BitVec 64, CW (TQ E (Ecur.set o (.val (.word out))) Sk bo0 (m + 1)) rest Brest QT) :
    CW (TQ E Ecur Sk bo0 m)
      (.decCall o .one (nm "process_checked_system_transaction") [gv X]
        (.seq (.ite (.cmp .lower (cw 0) (.load .one (.op .add [lv o, cw 48])))
          (callD (nm "requests_append") [cw t, .load .one (.op .add [lv o, cw 40]), .load .one (.op .add [lv o, cw 48])])
          .skip) rest)) (1 + Bcsr + (bApp + Brest)) QT := by
  refine cw_exists (P := fun kx s => kx.toNat ≤ m ∧ PA E Ecur (SkX Sk bo0 kx) s) fun kx => ?_
  by_cases hk : kx.toNat ≤ m
  swap
  · exact ⟨fun s hs h _ => absurd h.1 hk, fun s hs h _ => absurd h.1 hk⟩
  refine cw_pre (P := PA E Ecur (SkX Sk bo0 kx)) ?_ (fun s _ h => h.2)
  have hobl := gp_csr_obl (E := E) (Ecur := Ecur) (bo0 := bo0) (kx := kx) hT hbal hX
  refine cw_decCallRkE (E := E) (En := Ecur) (S := SkX Sk bo0 kx) (α := BitVec 64) hK hE0 (sk_safe hS bo0 kx) hQT hCsr
    (gwk_wg (by decide)) PucNF hCsrC ?_ hobl ?_ ?_
  · intro s hs hpk vs hvs callee
    obtain ⟨⟨Γ, p, hr, hL, hC⟩, hlk⟩ := hpk
    have hre := ebRun_loc hr callee (s.clock - 1)
    exact ⟨Γ, p, ebRun_G hre, ebRun_ptrs hre, argsOK_cc (by rw [evs_length hvs]; rfl), ebRun_jr hre,
      ⟨ebRun_ev hre, ebRun_cc hre⟩, p, ebRun_ptrs hre, hobl.pre s ⟨⟨Γ, p, hr, hL, hC⟩, hlk⟩ vs hvs callee Γ p hr hL hC⟩
  · intro s' vs callee v st Γ Γ' p p' hr hL hstp hq hsh
    exact csr_new hstp.1.hG' hq
  intro v hsh c
  obtain ⟨out, rfl⟩ := val_of_shapeEq_one' hsh
  exact cw_seq (cw_leaf cost_app (gp_ite_app hm hk hgw hrq hbase hAv hT)) (hrest out)

end cg2

end InitECandidate.Solver.MemSafe.Wg
