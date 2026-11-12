import InitECandidate.Solver.Band7.Ch3

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option linter.unusedVariables false
set_option cbv.warning false

/-!
# `mpt_set` statements with their cost (Band7)

`cmps_stmt` / `cmps_ia` are `mps_stmt` / `mps_ia` (`MemSafe/Trie/CsrM.lean`, `CsrIn.lean`) with the cost of the call
(`tb "mpt_set"`), (`MsPre8` has no key-length condition).
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

/-- The precondition of `mpt_set`'s conditional cost, as `CondCost` unfolds it. -/
def PreMs (vs : List (ValueHOL 64)) (s : State σ) : Prop :=
  ∃ Γ p, G guestC (guestHooksR (σ := σ)) Γ s ∧ ptrsOf s = some p ∧
    ArgsOK guestC Γ p Band4.msSig.params vs ∧ MsPre8 vs s Γ

theorem tb_ms : tb (nm "mpt_set") = Band4.msB := by
  unfold tb; simp

theorem cc_ms : Inv.CalleeCostP σ guestCtx (nm "mpt_set") PreMs (tb (nm "mpt_set")) := by
  rw [tb_ms]; exact ms8_condCost_R

theorem preMs_of_heap {a : Act σ} (haC : a.C = Types.guestC) (haH : a.H = Hooks.guestHooksR (σ := σ))
    {s : State σ} {Γ : Gam} {q : Ptrs} (hh : Heap a Γ q s) (callee : HolFiniteMapExact MlS (ValueHOL 64))
    {m k kl vp vl : BitVec 64}
    (h8 : MsPre8 [.val (.word m), .val (.word k), .val (.word kl), .val (.word vp), .val (.word vl)]
      (callEntryStateHOLFinite s callee) Γ) :
    PreMs [.val (.word m), .val (.word k), .val (.word kl), .val (.word vp), .val (.word vl)]
      (callEntryStateHOLFinite s callee) := by
  have hF := Rec.foldOK_guestR (σ := σ)
  have hG : G Types.guestC (Hooks.guestHooksR (σ := σ)) Γ s := by rw [← haC, ← haH]; exact hh.1
  exact ⟨Γ, q, MemSafe.G_congr hF.hH rfl rfl rfl rfl hG, (AllocImpl.ptrsOf_congr rfl).trans hh.2.1,
    argsOK_any5, h8⟩

theorem cmps_stmt {a : Act σ} (ha : ActOK a guestCtx) (haC : a.C = Types.guestC) (hCb : a.Cb = Types.guestC)
    (haH : a.H = Hooks.guestHooksR (σ := σ)) (hgr : a.sg.grows = true)
    (hcI : capSub insCaps a.caps = true)
    {args : List (ExpHOL 64)} {L : LocalsH → Prop} {E : Gam → Ptrs → Mem → Prop}
    {M K KL VP VL : BitVec 64}
    (hev : ∀ s : State σ, L s.locals → evs s args =
      some [.val (.word M), .val (.word K), .val (.word KL), .val (.word VP), .val (.word VL)])
    (hKL : 2 * KL.toNat < 2 ^ 64)
    (hHR : ∀ Γ q mm, E Γ q mm → HRecU a.p0 Γ q mm M)
    (hVin : ∀ Γ q mm, E Γ q mm → Hooks.VInR Types.tVAL Γ VP VL)
    (hpres : ∀ (s st : State σ) (Γ Γ' : Gam) (q q' : Ptrs),
      Ext Γ Γ' → Heap a Γ q s → Heap a Γ' q' st → q.Mono q' → NewFresh Γ Γ' q q' →
      Mod a mpsSig insCaps [.val (.word M), .val (.word K), .val (.word KL), .val (.word VP), .val (.word VL)]
        Γ q s st → E Γ q s.memory → HRec Γ' q' st.memory M →
      E Γ' q' st.memory)
    {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop} :
    CH σ (GI a L E) (.call (some (none, none)) (nm "mpt_set") args) (GP a L E Rv)
      (1 + tb (nm "mpt_set") + 0) := by
  refine ⟨mps_stmt ha haC hCb haH hgr hcI hev hKL hHR hVin hpres, ?_⟩
  refine Inv.costP_callD cc_ms ?_
  rintro s hs ⟨hL, Γ, q, he, hh, hsc, hE⟩ vs hvs callee
  rw [hev s hL] at hvs
  cases hvs
  exact preMs_of_heap haC haH hh callee ⟨M, K, KL, VP, VL, rfl, mrecF_of_hRec hh.2.1 (hHR Γ q s.memory hE).1,
    hKL⟩

/-- `mpt_root`'s conditional precondition. -/
def PreMr (vs : List (ValueHOL 64)) (s : State σ) : Prop :=
  ∃ Γ p, G guestC (guestHooksR (σ := σ)) Γ s ∧ ptrsOf s = some p ∧
    ArgsOK guestC Γ p (MemSafe.Trie.mrSig false).params vs ∧ MrPre8 vs s Γ

theorem tb_mr : tb (nm "mpt_root") = Band2.mrB := by
  unfold tb; rw [if_neg (by decide), if_pos rfl]

theorem cc_mr : Inv.CalleeCostP σ guestCtx (nm "mpt_root") PreMr (tb (nm "mpt_root")) := by
  rw [tb_mr]; exact mr8_condCost

theorem preMr_of_heap {a : Act σ} (haC : a.C = Types.guestC) (haH : a.H = Hooks.guestHooksR (σ := σ))
    {s : State σ} {Γ : Gam} {q : Ptrs} (hh : Heap a Γ q s) (callee : HolFiniteMapExact MlS (ValueHOL 64))
    {m out : BitVec 64} (hA : ArgsOK guestC Γ q (MemSafe.Trie.mrSig false).params [.val (.word m), .val (.word out)])
    (hf : Fits Γ nodeU (rd s.memory m)) :
    PreMr [.val (.word m), .val (.word out)] (callEntryStateHOLFinite s callee) := by
  have hF := Rec.foldOK_guestR (σ := σ)
  have hG : G Types.guestC (Hooks.guestHooksR (σ := σ)) Γ s := by rw [← haC, ← haH]; exact hh.1
  exact ⟨Γ, q, MemSafe.G_congr hF.hH rfl rfl rfl rfl hG, (AllocImpl.ptrsOf_congr rfl).trans hh.2.1,
    hA, m, out, rfl, hf⟩

/-- `mpt_from_witness`'s conditional precondition: the witness fact of `DwPre`. -/
theorem cc_mfw : Inv.CalleeCostP σ guestCtx (nm "mpt_from_witness") Band2.MfwPre Band2.mfwB :=
  Band2.mpt_from_witness_costP

theorem mfw_map (vs : List (ValueHOL 64)) (s : State σ) (Γ : Gam) (h : MemSafe.Trie.MfwPre vs s Γ) :
    Band2.MfwPre vs s := by
  obtain ⟨DB, RH, S, rfl, h1⟩ := h
  exact ⟨_, _, _, rfl, h1.1⟩

theorem tb_mfw : tb (nm "mpt_from_witness") = Band2.mfwB := by
  unfold tb; rw [if_neg (by decide), if_neg (by decide), if_pos rfl]

end InitECandidate.Solver.Band7
