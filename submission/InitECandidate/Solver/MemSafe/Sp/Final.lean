import InitECandidate.Solver.MemSafe.Sp.Wd
import InitECandidate.Solver.MemSafe.Ra.AttHyp
import InitECandidate.Solver.MemSafe.Exb.PlS
import InitECandidate.Solver.MemSafe.Exb.WdFresh

/-!
# Sp: the cost of `payload_header` (`HypPhCost`)

`hypPhCost hBmi : HypPhCost σ (bPh Bbmi)`, from the cost of `build_mpt_indexed` (`Eb.HypBmiCost σ Bbmi`, two calls) and table costs of every
other callee. The walk follows the memory-safety walk `Exb.funSpec_payload_header` statement by statement (`Sp/Pre`, `Mid`, `Wd`), so the
precondition of each call is the one that walk establishes; at the two `build_mpt_indexed` calls it is exactly `Eb.BmiPreC` (arguments of the
`bmiSig` shape, `Trie.BmiPre`, count below `2 ^ 50`, from the `tSLA` object of the payload / the fresh array), with `JrNZ` and `EvCc` carried
from the entry by the protected globals.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Sp
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Rec InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.Dn InitECandidate.Solver.MemSafe.Exb InitECandidate.Solver.MemSafe.Att

variable {σ : Type}

/-- The bound, in terms of the cost of `build_mpt_indexed`. -/
def bPh (Bbmi : Nat) : Nat := bPreE (bMidE Bbmi (bWd2E Bbmi))

theorem hypPhCost {Bbmi : Nat} (hBmiC : Eb.HypBmiCost σ Bbmi) : HypPhCost σ (bPh Bbmi) := by
  have hF := Rec.foldOK_guestR (σ := σ)
  have hX := hF.hX
  intro vs body callee rs hl s hs hpre0 hgood
  obtain ⟨hloc, Γ, p, hG, hp, -, hJ, hE, p', hp', hB, hPre⟩ := hpre0
  obtain rfl : p = p' := (Option.some.inj (hp'.symm.trans hp)).symm
  obtain ⟨SI, rfl, o, ho, hb, ht⟩ := hPre
  have hl' := hl
  rw [hX] at hl'
  obtain ⟨rfl, -, hlen, hbind⟩ := MemSafe.lookupCode_gen code_ph hl'
  have hargs : ArgsOK Types.guestC Γ (gp0 p) phSig.params [Wv SI] := argsOK_any (by simp [phSig]) rfl
  obtain ⟨ha, hh⟩ := ph_entry (sg := phSig) hF hG hp hargs
  have hL0 : Trie.LV [(nm "si", Wv SI)] s.locals := by
    intro q hq
    simp only [List.mem_cons, List.not_mem_nil, or_false] at hq
    subst hq
    rw [hloc]
    exact (hbind 0 (by decide) (by simp)).1
  obtain ⟨-, -, hS⟩ := hypPlS Γ s o hG ho ht
  rw [txF_eq hb 0] at hS
  have hI : PhI (rd s.memory (SI + BitVec.ofNat 64 0)) (rd s.memory (rd s.memory (SI + BitVec.ofNat 64 0) + BitVec.ofNat 64 0) + BitVec.ofNat 64 32) Γ p :=
    ⟨⟨o, ho, hb, ht⟩, hB, hS⟩
  obtain ⟨p2, hp2, hord2, hL2, -⟩ := id hG
  obtain rfl : p = p2 := (Option.some.inj (hp2.symm.trans hp)).symm
  have hmin : (Types.guestC.ty Types.tPL).minSz = 136 := by decide
  have hPE : PlE (phA phSig [Wv SI] s Γ p) (rd s.memory (SI + BitVec.ofNat 64 0)) := by
    refine ⟨rfl, fun x => argCells_any (by simp [phA, actOf, phSig]), ⟨o, ho, hb, ht, ?_⟩, ?_⟩
    · have := (hL2.1 o ho).2.2.2.1
      rw [ht, hmin] at this
      exact this
    · intro o' ho' ht' k hk
      have hc := cell_toNat hord2 hL2 ho' hk
      have hlive := (hL2.1 o' ho').2.2.2.2
      have hreg : (Types.guestC.ty o'.ty).region = .heap := by rw [ht']; decide
      rw [hreg] at hlive
      unfold Region.Live at hlive
      have e0 : (phA phSig [Wv SI] s Γ p).p0 = gp0 p := rfl
      rw [e0]
      unfold Ptrs.Allocated gp0
      simp only
      unfold Obj.HasSlot at hk
      unfold Obj.hi Obj.lo at *
      omega
  have hgw : (phA phSig [Wv SI] s Γ p).sg.gw = [] := rfl
  have hmid : ∀ H TXR WR RH BH : BitVec 64, CH (PJ (phA phSig [Wv SI] s Γ p)
        (Trie.LV ((nm "txr", Wv TXR) :: phKvB (rd s.memory (SI + BitVec.ofNat 64 0)) H WR RH BH))
        (fun Γ q m g => EB (phA phSig [Wv SI] s Γ p).p0 (rd s.memory (SI + BitVec.ofNat 64 0))
          (rd s.memory (rd s.memory (SI + BitVec.ofNat 64 0) + BitVec.ofNat 64 0) + BitVec.ofNat 64 32) H WR RH BH Γ q m g ∧
          Trie.FBlk (phA phSig [Wv SI] s Γ p).p0 TXR 32 Γ q ∧ H.toNat + 248 ≤ TXR.toNat)) phMid
      (PP (phA phSig [Wv SI] s Γ p) (fun _ => False) (fun _ _ _ _ => True)
        (PhRx (phA phSig [Wv SI] s Γ p).p0 (phA phSig [Wv SI] s Γ p).s0.memory (rd s.memory (SI + BitVec.ofNat 64 0))
          (rd s.memory (rd s.memory (SI + BitVec.ofNat 64 0) + BitVec.ofNat 64 0) + BitVec.ofNat 64 32) H WR RH BH))
      (bMidE Bbmi (bWd2E Bbmi)) :=
    fun H TXR WR RH BH => ch_mid ha rfl rfl rfl rfl rfl rfl hypPlS funSpec_wdFresh hBmiC hgw hJ hE hPE
      (ch_wd ha rfl rfl rfl rfl rfl rfl hypPlS funSpec_wdFresh hBmiC hgw hJ hE hPE
        (L2 := fun _ => False) (E2 := fun _ _ _ _ => True))
  obtain ⟨hch, hcost⟩ := ch_pre_all ha rfl rfl rfl rfl rfl rfl hypPlS funSpec_wdFresh hPE (SI := SI) (M0 := s.memory)
    (E2 := fun _ _ _ _ => True) hmid rfl rfl
  exact hcost s hs ⟨hL0, Γ, p, ext_refl _, hh, rfl, hI⟩ hgood

set_option maxHeartbeats 0 in
theorem bPh_eq (Bbmi : Nat) : bPh Bbmi = 14972424144521292398475908271321953337846 + 2 * Bbmi := by
  unfold bPh bPreE bMidE bWd2E bTailE bLoopPh cMz cKec cBrl cEer cCrh
  omega

/-- **`HypPhCost`**, with the bound in closed form: a literal plus two calls of `build_mpt_indexed`. -/
theorem hypPhCost_lit {Bbmi : Nat} (hBmiC : Eb.HypBmiCost σ Bbmi) :
    HypPhCost σ (14972424144521292398475908271321953337846 + 2 * Bbmi) := by
  rw [← bPh_eq]; exact hypPhCost hBmiC

end InitECandidate.Solver.MemSafe.Sp

#print axioms InitECandidate.Solver.MemSafe.Sp.hypPhCost
#print axioms InitECandidate.Solver.MemSafe.Sp.hypPhCost_lit
