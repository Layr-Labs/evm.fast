import InitECandidate.Solver.Improvements.StorageDeleteCost
import InitECandidate.Solver.Band7.CsrStmts


set_option autoImplicit false
set_option maxRecDepth 100000
set_option linter.unusedVariables false
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Trie
open InitECandidate.Solver.Band7
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Rec InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.Dn InitECandidate.Solver.MemSafe.Ins InitECandidate.Solver.MemSafe.Helpers
open InitECandidate.Solver.MemSafe.Hooks InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Trie

variable {σ : Type}

theorem cstage_delete (lo : Nat) {a : Act σ} (ha : ActOK a guestCtx) (haC : a.C = Types.guestC) (hCb : a.Cb = Types.guestC)
    (haH : a.H = Hooks.guestHooksR (σ := σ)) (hgr : a.sg.grows = true)
    (hcI : capSub insCaps a.caps = true) {K : Gam → Prop}
    (hK : ∀ Γ Γ' : Gam, Ext Γ Γ' → GamOK Γ' → K Γ → K Γ')
    {args : List (ExpHOL 64)} {L : LocalsH → Prop} {C NR SW AW ND M VB k kl : BitVec 64}
    (hev : ∀ s : State σ, L s.locals → evs s args =
      some [.val (.word M), .val (.word k), .val (.word kl), .val (.word 0), .val (.word 0)])
    (hKL : 2 * kl.toNat < 2 ^ 64)
    {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop} :
    CH σ (GI a L (fun Γ q mm => IA a K C NR SW AW ND M VB Γ q mm ∧ lo ≤ q.hp))
      (.call (some (none, none)) (nm "mpt_set") args)
      (GP a L (fun Γ q mm => IA a K C NR SW AW ND M VB Γ q mm ∧ lo ≤ q.hp) Rv)
      (1 + msDeleteB + 0) := by
  constructor
  · exact mps_stmt ha haC hCb haH hgr hcI hev hKL (fun Γ q mm h => h.1.2.2.1)
      (fun Γ q mm h => Or.inl rfl)
      (fun s st Γ Γ' q q' hext hh hh' hmo hnf hmd hE hHR' =>
        ⟨ia_mps haC hCb hK hext hh hh' hmo hnf hmd hHR' hE.1, hE.2.trans hmo.1⟩)
  · refine Inv.costP_callD msDeleteCost_R ?_
    rintro s hs ⟨hL, Γ, q, he, hh, hsc, hIA, hlo⟩ vs hvs callee
    rw [hev s hL] at hvs
    cases hvs
    have hF := Rec.foldOK_guestR (σ := σ)
    have hG : G Types.guestC (Hooks.guestHooksR (σ := σ)) Γ s := by
      rw [← haC, ← haH]
      exact hh.1
    exact ⟨Γ, q, MemSafe.G_congr hF.hH rfl rfl rfl rfl hG, (AllocImpl.ptrsOf_congr rfl).trans hh.2.1,
      argsOK_any5, M, k, kl, rfl, mrecF_of_hRec hh.2.1 hIA.2.2.1.1, hKL⟩

end InitECandidate.Solver.MemSafe.Trie

#print axioms InitECandidate.Solver.MemSafe.Trie.cstage_delete
