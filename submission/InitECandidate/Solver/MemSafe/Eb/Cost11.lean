import InitECandidate.Solver.MemSafe.Eb.Cost10
import InitECandidate.Solver.MemSafe.Eb.Tail17

/-!
# `execute_block`: the cost walk, part 11 (`tail_mid`: ebS40 to the end)
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Eb
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry

variable {σ : Type}

theorem costU {E : EbE σ} {En : Env} {S : FS} {f : MlS} {args : List (ExpHOL 64)} {B : Nat}
    (hcost : CalleeCost σ guestCtx f B) :
    Inv.CostP σ guestCtx (PA E En S) (.call (some (none, none)) f args) (1 + B + 0) :=
  Inv.costP_callD (Pre := fun _ _ => True) (Inv.calleeCostP_of_calleeCost hcost) (fun _ _ _ _ _ _ => trivial)

/-- The cost of `ebS40`, in the shape the walk produces. -/
def bTM (Bcsr Bbmi : Nat) : Nat :=
  (1 + cVbal + 0) + (0 + (1 + cAlloc + ((1 + Bcsr + 0) + (0 + (1 + cAlloc + ((1 + Bbmi + 0) + (1 + cAlloc +
    ((1 + Bbmi + 0) + (1 + cAlloc + ((1 + cLogsBloom + 0) + (1 + cAlloc + ((1 + Bbmi + 0) + (1 + cAlloc +
    ((1 + cCrh + 0) + (1 + cAlloc + ((1 + cKeccak + 0) + bTE))))))))))))))))


section wrappers
variable {E : EbE σ} {En : Env} {S : FS} {Z : List MlS}

theorem cw_csr {x : MlS} {rw : BitVec 64} {Bc : Nat} (hc : HypCsrCost σ Bc) (hT : Tidy Z S)
    (hz : ∀ g ∈ Z, ¬ (tabW.contains g = true)) (hEn : En x = some (.val (.word rw))) (hfb : S (Fct.fbuf rw 32)) :
    CW (PA E En S) (callD (nm "compute_state_root") [lv x]) (1 + Bc + 0) (fun r t => r = none ∧ PA E En S t) :=
  cw_hn (hn_csr hT hz hEn hfb) (cp_call hc rfl (csr_obl hT hz hEn hfb))

theorem cw_bmi {ea en eo : ExpHOL 64} {A N O : BitVec 64} {n Bb : Nat} (hc : HypBmiCost σ Bb)
    (hT : Tidy Z S) (hz : ∀ g ∈ Z, ¬ (tabW.contains g = true))
    (hA : ∀ s : State σ, PA E En S s → EvI s ea (.val (.word A)))
    (hN : ∀ s : State σ, PA E En S s → EvI s en (.val (.word N)))
    (hO : ∀ s : State σ, PA E En S s → EvI s eo (.val (.word O)))
    (hsl : S (Fct.sla A n)) (hNn : N.toNat = n) (hn : n < 2 ^ 50) (hfb : S (Fct.fbuf O 32)) :
    CW (PA E En S) (callD (nm "build_mpt_indexed") [ea, en, eo]) (1 + Bb + 0) (fun r t => r = none ∧ PA E En S t) :=
  cw_hn (hn_bmi hT hz hA hN hO hsl hNn hn hfb) (cp_call hc rfl (bmi_obl hT hz hA hN hO hsl hNn hn hfb))

theorem cw_crh {ea en eo : ExpHOL 64} {N O : BitVec 64} (hT : Tidy Z S) (hz : ∀ g ∈ Z, ¬ (tabW.contains g = true))
    (hA : ∀ s : State σ, PA E En S s → ∀ v, ev s ea = some v → ∃ d, v = .val (.word d))
    (hN : ∀ s : State σ, PA E En S s → EvI s en (.val (.word N))) (hNb : N.toNat < 2 ^ 20)
    (hO : ∀ s : State σ, PA E En S s → EvI s eo (.val (.word O))) (hfb : S (Fct.fbuf O 32)) :
    CW (PA E En S) (callD (nm "compute_requests_hash") [ea, en, eo]) (1 + cCrh + 0) (fun r t => r = none ∧ PA E En S t) :=
  cw_hn (hn_crh hT hz hA hN hNb hO hfb) (costU cc_cCrh)

theorem cw_keccak {ea eb eo : ExpHOL 64} {O : BitVec 64} (hT : Tidy Z S) (hz : ∀ g ∈ Z, ¬ (tabW.contains g = true))
    (hO : ∀ s : State σ, PA E En S s → EvI s eo (.val (.word O))) (hfb : S (Fct.fbuf O 32)) :
    CW (PA E En S) (callD (nm "keccak256") [ea, eb, eo]) (1 + cKeccak + 0) (fun r t => r = none ∧ PA E En S t) :=
  cw_hn (hn_keccak hT hz hO hfb) (costU cc_cKeccak)

theorem cw_lbX {ea eo : ExpHOL 64} {O : BitVec 64} (hK : HypKeepG σ) (hT : Tidy Z S)
    (hz : ∀ g ∈ Z, ¬ (tabW.contains g = true))
    (hA : ∀ s : State σ, PA E En S s → ∀ v, ev s ea = some v → ∃ d, v = .val (.word d))
    (hO : ∀ s : State σ, PA E En S s → EvI s eo (.val (.word O))) :
    CW (PAX E En S (BlmR O)) (callD (nm "logs_bloom") [ea, eo]) (1 + cLogsBloom + 0) (fun r t => r = none ∧ PA E En S t) :=
  cw_hn (hn_lbX hK hT hz hA hO)
    (Inv.costP_callD (Pre := fun _ _ => True) (Inv.calleeCostP_of_calleeCost cc_cLogsBloom) (fun _ _ _ _ _ _ => trivial))

end wrappers

section cw11
variable {E : EbE σ} {En : Env} {S : FS} {Z : List MlS}
  {w t r wd0 ntx0 nwd0 pl0 : BitVec 64} {k : Nat}

theorem cw_tail_mid {Bcsr Bbmi : Nat} (hCsr : HypCsrCost σ Bcsr) (hBmi : HypBmiCost σ Bbmi) (hK : HypKeepG σ) (hE0 : ∀ o ∈ E.Γ0, KeepTy o.ty) (hS : SafeS S) (hT : Tidy Z S)
    (hz : ∀ g ∈ Z, ¬ (tabW.contains g = true)) (hTl : TlK S w t r wd0 ntx0 nwd0 pl0 k) (hEn : EnT En t r ntx0 pl0) :
    CW (PA E En S) ebS40 (bTM Bcsr Bbmi) (RetQ E) := by
  have hQ := fun n => locIns_resIns (retQ_locIns E) n
  unfold ebS40
  refine cw_seq (cw_hn (hn_tabcall tab_vbal (by decide) (by decide) (by simp) (by simp) hT hz) (costU cc_cVbal)) ?_
  unfold ebS41
  refine cw_seq (cw_hn hn_skip (costP_zero cost_skip)) ?_
  unfold ebS42
  refine cw_allocFresh (hQ _) (n := BitVec.ofNat 64 32) (fun s _ => evI_cw s 32) hT hz ?_
  intro w1
  have hT1 := tidy_fbuf hT w1 (BitVec.ofNat 64 32).toNat
  have hS1 := safeS_fbuf hS w1 (BitVec.ofNat 64 32).toNat
  have hl1 := tlK_mono hTl (S' := fun f => S f ∨ f = Fct.fbuf w1 (BitVec.ofNat 64 32).toNat) (fun f hf => Or.inl hf)
  have hEn1 := enT_set (v := .val (.word w1)) (x := nm "root") hEn (by decide)
  unfold ebS43
  refine cw_seq (cw_csr hCsr (x := nm "root") (rw := w1) hT1 hz (env_set_self _ _ _) (Or.inr rfl)) ?_
  unfold ebS44
  refine cw_seq (cw_hn hn_skip (costP_zero cost_skip)) ?_
  unfold ebS45
  refine cw_allocFresh (hQ _) (n := BitVec.ofNat 64 32) (fun s _ => evI_cw s 32) hT1 hz ?_
  intro w2
  have hT2 := tidy_fbuf hT1 w2 (BitVec.ofNat 64 32).toNat
  have hS2 := safeS_fbuf hS1 w2 (BitVec.ofNat 64 32).toNat
  have hl2 := tlK_mono hl1 (S' := fun f => (S f ∨ f = Fct.fbuf w1 (BitVec.ofNat 64 32).toNat) ∨ f = Fct.fbuf w2 (BitVec.ofNat 64 32).toNat) (fun f hf => Or.inl hf)
  have hEn2 := enT_set (v := .val (.word w2)) (x := nm "txroot") hEn1 (by decide)
  unfold ebS46
  refine cw_seq (cw_bmi hBmi (ea := lv (nm "txs")) (en := lv (nm "ntx")) (eo := lv (nm "txroot")) (A := t) (N := ntx0)
    (O := w2) (n := ntx0.toNat) hT2 hz (fun s hs => evI_lv_pa hs hEn2.1) (fun s hs => evI_lv_pa hs hEn2.2.2.1)
    (fun s hs => evI_lv_pa hs (env_set_self _ _ _)) hl2.slt rfl hl2.bt (Or.inr rfl)) ?_
  unfold ebS47
  refine cw_allocFresh (hQ _) (n := BitVec.ofNat 64 32) (fun s _ => evI_cw s 32) hT2 hz ?_
  intro w3
  have hT3 := tidy_fbuf hT2 w3 (BitVec.ofNat 64 32).toNat
  have hS3 := safeS_fbuf hS2 w3 (BitVec.ofNat 64 32).toNat
  have hl3 := tlK_mono hl2 (S' := fun f => ((S f ∨ f = Fct.fbuf w1 (BitVec.ofNat 64 32).toNat) ∨ f = Fct.fbuf w2 (BitVec.ofNat 64 32).toNat) ∨ f = Fct.fbuf w3 (BitVec.ofNat 64 32).toNat) (fun f hf => Or.inl hf)
  have hEn3 := enT_set (v := .val (.word w3)) (x := nm "rroot") hEn2 (by decide)
  unfold ebS48
  refine cw_seq (cw_bmi hBmi (ea := lv (nm "rcs")) (en := lv (nm "ntx")) (eo := lv (nm "rroot")) (A := r) (N := ntx0)
    (O := w3) (n := ntx0.toNat) hT3 hz (fun s hs => evI_lv_pa hs hEn3.2.1) (fun s hs => evI_lv_pa hs hEn3.2.2.1)
    (fun s hs => evI_lv_pa hs (env_set_self _ _ _)) hl3.slr rfl hl3.bt (Or.inr rfl)) ?_
  unfold ebS49
  refine cw_allocBloom hK hE0 hS3 (hQ _) (n := BitVec.ofNat 64 256) (by decide) (by decide)
    (fun s _ => evI_cw s 256) hT3 hz ?_
  intro w4
  have hT4 := tidy_fbuf hT3 w4 (BitVec.ofNat 64 256).toNat
  have hS4 := safeS_fbuf hS3 w4 (BitVec.ofNat 64 256).toNat
  have hl4 := tlK_mono hl3 (S' := fun f => (((S f ∨ f = Fct.fbuf w1 (BitVec.ofNat 64 32).toNat) ∨ f = Fct.fbuf w2 (BitVec.ofNat 64 32).toNat) ∨ f = Fct.fbuf w3 (BitVec.ofNat 64 32).toNat) ∨ f = Fct.fbuf w4 (BitVec.ofNat 64 256).toNat) (fun f hf => Or.inl hf)
  have hEn4 := enT_set (v := .val (.word w4)) (x := nm "bloom") hEn3 (by decide)
  unfold ebS50
  refine cw_seq (cw_lbX (ea := .load .one (.op .add [gv (nm "bo"), cw 40])) (eo := lv (nm "bloom")) (O := w4) hK hT4 hz
    (fun s hs v hv => ev_load_word hv) (fun s hs => evI_lv_pa hs (env_set_self _ _ _))) ?_
  unfold ebS51
  refine cw_allocFresh (hQ _) (n := BitVec.ofNat 64 32) (fun s _ => evI_cw s 32) hT4 hz ?_
  intro w5
  have hT5 := tidy_fbuf hT4 w5 (BitVec.ofNat 64 32).toNat
  have hS5 := safeS_fbuf hS4 w5 (BitVec.ofNat 64 32).toNat
  have hl5 := tlK_mono hl4 (S' := fun f => ((((S f ∨ f = Fct.fbuf w1 (BitVec.ofNat 64 32).toNat) ∨ f = Fct.fbuf w2 (BitVec.ofNat 64 32).toNat) ∨ f = Fct.fbuf w3 (BitVec.ofNat 64 32).toNat) ∨ f = Fct.fbuf w4 (BitVec.ofNat 64 256).toNat) ∨ f = Fct.fbuf w5 (BitVec.ofNat 64 32).toNat) (fun f hf => Or.inl hf)
  have hEn5 := enT_set (v := .val (.word w5)) (x := nm "wroot") hEn4 (by decide)
  unfold ebS52
  refine cw_seq (cw_bmi hBmi (ea := gv (nm "wd_rlp_slices")) (en := .load .one (.op .add [lv (nm "pl"), cw 56]))
    (eo := lv (nm "wroot")) (A := wd0) (N := nwd0) (O := w5) (n := nwd0.toNat) hT5 hz
    (fun s hs => evI_gval hs hl5.gwd)
    (fun s hs => evI_ld_pcv hs (evI_lvoff hs hEn5.2.2.2 56) hl5.pwd)
    (fun s hs => evI_lv_pa hs (env_set_self _ _ _)) hl5.slw rfl hl5.bwd (Or.inr rfl)) ?_
  unfold ebS53
  refine cw_allocFresh (hQ _) (n := BitVec.ofNat 64 32) (fun s _ => evI_cw s 32) hT5 hz ?_
  intro w6
  have hT6 := tidy_fbuf hT5 w6 (BitVec.ofNat 64 32).toNat
  have hS6 := safeS_fbuf hS5 w6 (BitVec.ofNat 64 32).toNat
  have hl6 := tlK_mono hl5 (S' := fun f => (((((S f ∨ f = Fct.fbuf w1 (BitVec.ofNat 64 32).toNat) ∨ f = Fct.fbuf w2 (BitVec.ofNat 64 32).toNat) ∨ f = Fct.fbuf w3 (BitVec.ofNat 64 32).toNat) ∨ f = Fct.fbuf w4 (BitVec.ofNat 64 256).toNat) ∨ f = Fct.fbuf w5 (BitVec.ofNat 64 32).toNat) ∨ f = Fct.fbuf w6 (BitVec.ofNat 64 32).toNat) (fun f hf => Or.inl hf)
  have hEn6 := enT_set (v := .val (.word w6)) (x := nm "rqh") hEn5 (by decide)
  unfold ebS54
  refine cw_seq (cw_crh (ea := .load .one (.op .add [gv (nm "bo"), cw 56])) (en := .load .one (.op .add [gv (nm "bo"), cw 64]))
    (eo := lv (nm "rqh")) (N := BitVec.ofNat 64 k) (O := w6) hT6 hz (fun s hs v hv => ev_load_word hv)
    (fun s hs => evI_ld_cellv hs (evI_add (evI_gobj hs hl6.gbo) (evI_cw s 64)) hl6.c64)
    (by rw [BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by have := hl6.hk; omega)]; have := hl6.hk; omega)
    (fun s hs => evI_lv_pa hs (env_set_self _ _ _)) (Or.inr rfl)) ?_
  unfold ebS55
  refine cw_allocFresh (hQ _) (n := BitVec.ofNat 64 32) (fun s _ => evI_cw s 32) hT6 hz ?_
  intro w7
  have hT7 := tidy_fbuf hT6 w7 (BitVec.ofNat 64 32).toNat
  have hEn7 := enT_set (v := .val (.word w7)) (x := nm "balh") hEn6 (by decide)
  unfold ebS56
  refine cw_seq (cw_keccak (ea := .rfield 0 (lv (nm "bal"))) (eb := .rfield 1 (lv (nm "bal"))) (eo := lv (nm "balh"))
    (O := w7) hT7 hz (fun s hs => evI_lv_pa hs (env_set_self _ _ _)) (Or.inr rfl)) ?_
  exact cw_tail_end hT7 hz


end cw11

end InitECandidate.Solver.MemSafe.Eb
