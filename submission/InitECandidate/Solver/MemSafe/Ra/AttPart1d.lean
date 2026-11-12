import InitECandidate.Solver.MemSafe.Ra.AttPart1c

/-!
# `run_attempt`, before `payload_header` (4): `raS17 .. raS22`
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

def bTail (Bph B2 : Nat) : Nat := (2 ^ 24 + 1) * (0 + 1) + (0 + (1 + Bph + B2))

section tail
variable {E : EbE σ} {si0 pl0 ptxs0 ntx0 nwd0 T1 T2 z bsw skw bh nh : BitVec 64} {En : Env} {S : FS}
  {QT : Option (PanSemResultExact 64) → State σ → Prop}

theorem p1_tail (hK : HypKeepG σ) (hE0 : ∀ o ∈ E.Γ0, KeepTy o.ty) (hQ : ∀ n, ResIns n QT)
    (hsi : En (nm "si") = some (.val (.word si0))) (hpl : En (nm "pl") = some (.val (.word pl0)))
    (hsub : ∀ f, S2b si0 pl0 ptxs0 ntx0 nwd0 T1 T2 z bsw skw bh nh f → S f) (hT : Tidy Z1b S) (hS : SafeS S)
    (hntx : ntx0.toNat < 2 ^ 24) {Bph B2 : Nat} (hc : HypPhCost σ Bph)
    (hk : ∀ (E' : EbE σ) (H C WD : BitVec 64), (∀ o ∈ E'.Γ0, KeepTy o.ty) →
      CW (PA E' (En2 si0 pl0 H) (S2 si0 pl0 ptxs0 ntx0 nwd0 T1 T2 z bsw skw bh nh H C WD)) raS23 B2 QT) :
    CW (PA E En S) raS17 (bTail Bph B2) QT := by
  have hpcv : S (Fct.pcv (pl0 + BitVec.ofNat 64 40) ntx0) := hsub _ (by simp [S2b])
  unfold raS17
  refine cw_decV (hQ _) fun txsv => ?_
  have hpl1 : (En.set (nm "txs") txsv) (nm "pl") = some (.val (.word pl0)) := env_set_keep hpl (by decide)
  have hsi1 : (En.set (nm "txs") txsv) (nm "si") = some (.val (.word si0)) := env_set_keep hsi (by decide)
  unfold raS18
  refine cw_decT (hQ _) (w := ntx0) (fun s hp v hv =>
    evI_ld_pcv hp (evI_add (evI_lv_pa hp hpl1) (evI_cw s 40)) hpcv v hv) ?_
  unfold raS19
  refine cw_decT (hQ _) (w := 0) (fun s hp v hv => by
    rw [ev_cw] at hv; exact (Option.some.inj hv).symm) ?_
  refine cw_loop20 hntx (env_set_self _ _ _) ?_
  unfold raS21
  refine cw_seq (cw_hn hn_skip (costP_zero cost_skip)) ?_
  refine cw_decPh hK hE0 (hQ _) ⟨?_, ?_, hsub, hT, hS⟩ hc hk
  · exact env_set_keep (env_set_keep (env_set_keep hsi1 (by decide)) (by decide)) (by decide)
  · exact env_set_keep (env_set_keep (env_set_keep hpl1 (by decide)) (by decide)) (by decide)

end tail

end InitECandidate.Solver.MemSafe.Att
