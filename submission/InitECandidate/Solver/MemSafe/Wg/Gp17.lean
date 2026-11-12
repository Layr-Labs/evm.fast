import InitECandidate.Solver.MemSafe.Wg.Gp16

/-!
# Wg: `HypGpr` is proved (with the four request-address globals added to its precondition)

`HypGpr4 σ` is `Eb.HypGpr σ` with `GprPre Γ s` replaced by `GprPre Γ s ∧ GprAddrs Γ s`: the four constant-address globals
(`withdrawal_request_address`, `consolidation_request_address`, `builder_deposit_address`, `builder_exit_address`) are `tB24` objects.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Wg
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry
open InitECandidate.Solver.MemSafe.Eb

variable {σ : Type}

/-- The four constant-address globals of the system contracts are `tB24` objects. -/
def GprAddrs (Γ : Gam) (s : State σ) : Prop :=
  GObj Γ s (nm "withdrawal_request_address") tB24 ∧ GObj Γ s (nm "consolidation_request_address") tB24 ∧
  GObj Γ s (nm "builder_deposit_address") tB24 ∧ GObj Γ s (nm "builder_exit_address") tB24

/-- `process_general_purpose_requests()`: `Eb.HypGpr` with the addresses in the precondition. -/
def HypGpr4 (σ : Type) : Prop :=
  CallR (σ := σ) (nm "process_general_purpose_requests")
    (fun vs s Γ _ => vs = [] ∧ CPre Γ ∧ BalG Γ s ∧ (GprPre Γ s ∧ GprAddrs Γ s)) (fun _ s _ a => GprD s a)
    (fun _ s _ _ _ t _ _ => ∃ bo : BitVec 64, ∃ k : Nat, gword s (nm "bo") = some bo ∧ k ≤ 5 ∧
      rd t.memory (bo + BitVec.ofNat 64 64) = BitVec.ofNat 64 k) ∧
  GwK (σ := σ) (nm "process_general_purpose_requests") WgW

theorem callR_gpr (hSft : HypSft σ) (hPuc : HypPuc σ) (hK : HypKeepG σ) :
    CallR (σ := σ) (nm "process_general_purpose_requests")
      (fun vs s Γ _ => vs = [] ∧ CPre Γ ∧ BalG Γ s ∧ (GprPre Γ s ∧ GprAddrs Γ s)) (fun _ s _ a => GprD s a)
      (fun _ s _ _ _ t _ _ => ∃ bo : BitVec 64, ∃ k : Nat, gword s (nm "bo") = some bo ∧ k ≤ 5 ∧
        rd t.memory (bo + BitVec.ofNat 64 64) = BitVec.ofNat 64 k) := by
  have hCsr := callR_csr hSft hPuc hK
  have hX := (Rec.foldOK_guestR (σ := σ)).hX
  intro vs body callee rs hl s hs hloc r hr v hv Γ p hG hp hJ hE
    ⟨hvs, hC, hbal, ⟨bo0, rq0, rl, hgw, hbo, hrq, hrqo, hk0, hrl, hrlo⟩, ⟨⟨a1, ga1, ha1⟩, ⟨a2, ga2, ha2⟩, ⟨a3, ga3, ha3⟩,
      ⟨a4, ga4, ha4⟩⟩⟩
  subst hvs
  rw [hX] at hl
  obtain ⟨rfl, -, hlen, hbind⟩ := lookupCode_gen code_gpr hl
  obtain ⟨bs, hbs1, hbs2⟩ := hbal.gbs
  obtain ⟨ba, hba1, hba2⟩ := hbal.gba
  obtain ⟨bk, hbk1, hbk2⟩ := hbal.gbk
  obtain ⟨bi, hbi1, hbi2⟩ := hbal.gbi
  obtain ⟨bs2, hbs21, hbs22⟩ := hbal.gbs2
  obtain ⟨sk, hsk1, hsk2⟩ := hbal.gsk
  let E : EbE σ := ⟨Γ, s, p⟩
  have hE0 : ∀ o ∈ E.Γ0, KeepTy o.ty := fun o ho => keepTy_of_cpre hC ho
  obtain ⟨q, hq, hord, hL0, -⟩ := id hG
  obtain rfl : p = q := Option.some.inj (hp.symm.trans hq)
  obtain ⟨ob, hob, hob1, hob2, hob3⟩ := hbo
  obtain ⟨orq, horq, horq1, horq2, horq3⟩ := hrqo
  obtain ⟨M1, k1, hM1, hM1t, hk1, hp1, he1⟩ := blk_cell (off := 56) ⟨ob, hob, hob1, hob2, hob3⟩ tBO_block tBO_prot (by omega) (by omega)
  obtain ⟨M2, k2, hM2, hM2t, hk2, hp2, he2⟩ := blk_cell (off := 64) ⟨ob, hob, hob1, hob2, hob3⟩ tBO_block tBO_prot (by omega) (by omega)
  have hrq' : rd E.s0.memory (bo0 + BitVec.ofNat 64 56) = rq0 := hrq
  have hkx : (rd s.memory (bo0 + BitVec.ofNat 64 64)).toNat ≤ 0 := by rw [hk0]; simp
  have hpa : PA E (fun _ => none) (SkX (GS Γ s bo0 rq0 a1 a2 a3 a4 bs ba bk bi bs2 sk) bo0 (rd s.memory (bo0 + BitVec.ofNat 64 64))) s := by
    refine ⟨⟨Γ, p, ebRun_refl hG hp hJ hE.1 hE.2, ?_⟩, fun x w hx => by cases hx⟩
    intro f hf
    rcases hf with hf | rfl
    · rcases hf with hf | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
      · exact frS_entry f hf
      · exact ⟨hgw, ob, hob, hob1, hob2⟩
      · exact ⟨ob, hob, hob1, hob2, hob3⟩
      · exact ⟨orq, horq, horq1, horq2, horq3⟩
      · exact ⟨hrq, M1, hM1, hM1t, k1, hk1, hp1, he1⟩
      · exact ⟨ga1, ha1⟩
      · exact ⟨ga2, ha2⟩
      · exact ⟨ga3, ha3⟩
      · exact ⟨ga4, ha4⟩
      · exact ⟨hbs1, hbs2⟩
      · exact ⟨hba1, hba2⟩
      · exact ⟨hbk1, hbk2⟩
      · exact ⟨hbi1, hbi2⟩
      · exact ⟨hbs21, hbs22⟩
      · exact ⟨hsk1, hsk2⟩
    · exact ⟨rfl, M2, hM2, hM2t, k2, hk2, hp2, he2⟩
  have hh := gpr_walk (E := E) (En0 := fun _ => none) (a1 := a1) (a2 := a2) (a3 := a3) (a4 := a4) (bs := bs) (ba := ba)
    (bk := bk) (bi := bi) (bs2 := bs2) (sk := sk) hK hE0 hCsr hkx hgw hrq' (fun x _ => rfl)
  have hres := hh s hs hpa (by rw [hr, hv]; trivial)
  obtain ⟨Γ', p', hr', hL', k, hk5, hkr⟩ := hres v (by rw [hr, hv])
  exact ⟨Γ', p', stp_of_ret hG hr' hL', bo0, k, hgw, hk5, hkr⟩

theorem hypGpr4 (hSft : HypSft σ) (hPuc : HypPuc σ) (hK : HypKeepG σ) : HypGpr4 σ :=
  ⟨callR_gpr hSft hPuc hK, gwk_wg (by decide)⟩

end InitECandidate.Solver.MemSafe.Wg

#print axioms InitECandidate.Solver.MemSafe.Wg.hypGpr4
