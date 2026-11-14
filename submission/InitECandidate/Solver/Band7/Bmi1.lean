import InitECandidate.Solver.MemSafe.MptTightCost.Seven
import InitECandidate.Solver.Band7.Ms8
import InitECandidate.Solver.Band7.Root
import InitECandidate.Solver.Band7.Loop
import InitECandidate.Solver.Band7.Cq
import InitECandidate.Solver.Band4.ValG
import InitECandidate.Solver.MemSafe.Dn.Cfg
import InitECandidate.Solver.MemSafe.Eb.Cost2

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option linter.unusedVariables false
set_option cbv.warning false

/-!
# `build_mpt_indexed`: the cost of the loop (Band7)

The cost walk mirrors the memory walk (`MemSafe/Trie/BmiLoop.lean`): every node is a `CostP` under the activation
invariant `GI a L E` of the ghost run, and the memory facts come from the `HoareG` lemmas through `hoare_of_hoareG`.
-/

namespace InitECandidate.Solver.Band7
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Rec InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.Dn InitECandidate.Solver.MemSafe.Ins InitECandidate.Solver.MemSafe.Helpers
open InitECandidate.Solver.MemSafe.Hooks InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Trie

variable {σ : Type}

/-! ## `mpt_root` -/

def MrPre8 (vs : List (ValueHOL 64)) (s : State σ) (Γ : Gam) : Prop :=
  ∃ m out : BitVec 64, vs = [.val (.word m), .val (.word out)] ∧ Fits Γ nodeU (rd s.memory m)

theorem mr8_condCost :
    CondCost σ guestCtx guestC (guestHooksR (σ := σ)) (nm "mpt_root") (mrSig false) MrPre8 InitECandidate.Solver.MemSafe.MptTightCost.Mpt.mrB := by
  intro vs body callee rs hl
  refine (InitECandidate.Solver.MemSafe.MptTightCost.Seven.mpt_root7_costP vs body callee rs hl).pre ?_
  rintro s hs ⟨hloc, Γ, p, hG, hp, hargs, m, out, rfl, hroot⟩
  refine ⟨hloc, m, .val (.word out), rfl, p, hp, ?_⟩
  obtain ⟨p0, hp0, hord, -⟩ := id hG
  rw [hp] at hp0
  cases hp0
  refine ⟨hord, Band.NdOf Γ, Band4.trieOK_of_nval hG vty_tVAL (nval_tVAL Γ s hG) hp, ?_⟩
  by_cases h0 : rd s.memory m = 0
  · exact Or.inl h0
  · rcases fits_nodeU_cases hroot with h | h
    · exact Or.inr (Or.inl h)
    · exact Or.inr (Or.inr h)

/-! ## The loop body -/

theorem bmi_set_vs {kv : List (MlS × ValueHOL 64)} {I KL M A D : BitVec 64}
    (hm : (nm "m", ValueHOL.val (.word M)) ∈ kv) (hA : (nm "slice_arr", ValueHOL.val (.word A)) ∈ kv)
    (hi : (nm "i", ValueHOL.val (.word I)) ∈ kv) (hk : (nm "klen", ValueHOL.val (.word KL)) ∈ kv)
    {s : State σ} (hL : Trie.LV kv s.locals) (hD : s.globals.lookup (nm "mpt_key_scratch") = some (.val (.word D)))
    {vs : List (ValueHOL 64)} (hvs : evs s bmiSetArgs = some vs) :
    vs = [.val (.word M), .val (.word D), .val (.word KL),
      .val (.word (rd s.memory (A + I * 16#64))), .val (.word (rd s.memory (A + (I * 16#64 + 8#64))))] := by
  have e1 := lv_ev hL hm
  have e2 : ev s (gv (nm "mpt_key_scratch")) = some (.val (.word D)) := hD
  have e3 := lv_ev hL hk
  have e4 : ev s bmiEl = some (.val (.word (A + I * 16#64))) :=
    ev_add2 (lv_ev hL hA) (ev_mul2 (lv_ev hL hi) (ev_cw s 16))
  have e5 : ev s bmiEl8 = some (.val (.word (A + (I * 16#64 + 8#64)))) :=
    ev_add3 (lv_ev hL hA) (ev_mul2 (lv_ev hL hi) (ev_cw s 16)) (ev_cw s 8)
  unfold bmiSetArgs at hvs
  obtain ⟨v1, vs1, rfl, h1, hr1⟩ := evs_cons_inv hvs
  obtain ⟨v2, vs2, rfl, h2, hr2⟩ := evs_cons_inv hr1
  obtain ⟨v3, vs3, rfl, h3, hr3⟩ := evs_cons_inv hr2
  obtain ⟨v4, vs4, rfl, h4, hr4⟩ := evs_cons_inv hr3
  obtain ⟨v5, vs5, rfl, h5, hr5⟩ := evs_cons_inv hr4
  rw [evs_nil] at hr5
  cases hr5
  rw [e1] at h1; cases h1
  rw [e2] at h2; cases h2
  rw [e3] at h3; cases h3
  obtain ⟨w4, hw4, -, rfl⟩ := Struct.ev_load1_inv h4
  rw [e4] at hw4; cases hw4
  obtain ⟨w5, hw5, -, rfl⟩ := Struct.ev_load1_inv h5
  rw [e5] at hw5; cases hw5
  rfl

theorem argsOK_any5 {C : Cfg} {Γ : Gam} {p : Ptrs} {a b c d e : ValueHOL 64} :
    ArgsOK C Γ p Band4.msSig.params [a, b, c, d, e] := by
  refine ⟨rfl, fun i pt v hp hv => ?_⟩
  rcases i with _ | _ | _ | _ | _ | i <;> simp [Band4.msSig] at hp <;> subst hp <;> trivial

/-- The nonempty-slice hypothesis: every slice of the array is nonempty, in the entry memory. -/
def NonEmpty (m0 : Mem) (A N : BitVec 64) : Prop :=
  ∀ j : BitVec 64, j.toNat < N.toNat → rd m0 (A + j * 16#64) ≠ 0 ∧ rd m0 (A + (j * 16#64 + 8#64)) ≠ 0

def bRlpW : Nat := 36893488147419103236
def bSet : Nat := 1 + Band4.msB + 0
def bBody : Nat := 1 + bRlpW + (bSet + 0)

theorem cc_rlp : CalleeCost σ guestCtx (nm "rlp_encode_word") bRlpW := Wire.calleeCost_guest (by rfl)

/-- `mpt_set(m, mpt_key_scratch, klen, SLICE(i))`, then `i = i + 1`. -/
theorem c_set {a : Act σ} (ha : ActOK a guestCtx) (haC : a.C = Types.guestC) (hCb : a.Cb = Types.guestC)
    (haH : a.H = Hooks.guestHooksR (σ := σ)) (hgr : a.sg.grows = true) (hcI : capSub insCaps a.caps = true)
    {M MK A N OUT I KL : BitVec 64} (hI : I.toNat < N.toNat) (hKL : KL.toNat ≤ 9) :
    Inv.CostP σ guestCtx (GI a (Trie.LV ((nm "klen", ValueHOL.val (.word KL)) ::
      (nm "i", ValueHOL.val (.word I)) :: Trie.kvB M MK A N OUT)) (EL a A N M))
      (.seq (.call (some (none, none)) (nm "mpt_set") bmiSetArgs)
        (.assign .local (nm "i") (.op .add [lv (nm "i"), cw 1]))) (bSet + 0) := by
  refine Inv.costP_seq (R := fun _ => True) ?_ (fun s _ _ _ _ => trivial)
    (Inv.costP_of_cost (cost_assign _ _ _))
  have hcc : CondCost σ guestCtx guestC (guestHooksR (σ := σ)) (nm "mpt_set") Band4.msSig MsPre8 Band4.msB :=
    ms8_condCost_R
  refine Inv.costP_callD (hcc.mono (le_refl _)) ?_
  intro s hs ⟨hL, Γ, q, he, hh, hsc, hE⟩ vs hvs callee
  have hG : G Types.guestC (Hooks.guestHooksR (σ := σ)) Γ s := by rw [← haC, ← haH]; exact hh.1
  obtain ⟨D, o, ho, hD, -, -⟩ := key_obj hG
  have hv := bmi_set_vs (M := M) (A := A) (I := I) (KL := KL) (D := D) (kv := (nm "klen", ValueHOL.val (.word KL)) :: (nm "i", ValueHOL.val (.word I)) ::
    Trie.kvB M MK A N OUT) (by simp [Trie.kvB]) (by simp [Trie.kvB]) (by simp) (by simp) hL hD hvs
  subst hv
  have hF := Rec.foldOK_guestR (σ := σ)
  refine ⟨Γ, q, MemSafe.G_congr hF.hH rfl rfl rfl rfl hG, ?_, ?_, ?_⟩
  · exact (AllocImpl.ptrsOf_congr rfl).trans hh.2.1
  · exact argsOK_any5
  · exact ⟨M, D, KL, _, _, rfl, mrecF_of_hRec hh.2.1 hE.1.1, by omega⟩

end InitECandidate.Solver.Band7
