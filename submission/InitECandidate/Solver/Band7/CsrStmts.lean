import InitECandidate.Solver.Band7.CsrRules

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

theorem chset_stmt {a : Act σ} (ha : ActOK a guestCtx) (hCb : a.Cb = Types.guestC)
    (haH : a.H = Hooks.guestHooksR (σ := σ)) (hgr : a.sg.grows = true) {th : Nat}
    (hth : th ∈ Types.hdrTys) (hcH : capSub (HtabEntries.capsHT th) a.caps = true)
    {args : List (ExpHOL 64)} {L : LocalsH → Prop} {E : Gam → Ptrs → Mem → Prop}
    {T key val : BitVec 64}
    (hev : ∀ s : State σ, L s.locals → evs s args =
      some [.val (.word T), .val (.word key), .val (.word val)])
    (hT : ∀ (s : State σ) Γ q, Heap a Γ q s → E Γ q s.memory → ∃ o ∈ Γ, o.base = T ∧ o.ty = th)
    (hV : ∀ (s : State σ) Γ q, Heap a Γ q s → E Γ q s.memory → Fits Γ (valK th) val)
    (hRK : ∀ (s : State σ) Γ q, Heap a Γ q s → E Γ q s.memory →
      key.toNat + htKL th ≤ 2 ^ 64 ∧ ∃ o ∈ Γ, o.base = T ∧ o.ty = th ∧
      ∀ a : Nat, key.toNat ≤ a → a < key.toNat + htKL th → ∃ x ∈ Γ, x.lo ≤ a ∧ a < x.hi ∧ ¬ Owns o x)
    (hpres : ∀ (s st : State σ) (Γ Γ' : Gam) (q q' : Ptrs),
      Ext Γ Γ' → Heap a Γ q s → Heap a Γ' q' st → q.Mono q' → NewFresh Γ Γ' q q' →
      Mod a (HtabEntries.setSigR th) (HtabEntries.capsHT th)
        [.val (.word T), .val (.word key), .val (.word val)] Γ q s st → E Γ q s.memory →
      E Γ' q' st.memory)
    {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop} :
    CH σ (GI a L E) (.call (some (none, none)) (nm "htab_set") args) (GP a L E Rv)
      (cb (.call (some (none, none)) (nm "htab_set") args)) :=
  ch_of_hoare_T (hset_stmt ha hCb haH hgr hth hcH hev hT hV hRK hpres)

theorem cmps_ia {a : Act σ} (ha : ActOK a guestCtx) (haC : a.C = Types.guestC) (hCb : a.Cb = Types.guestC)
    (haH : a.H = Hooks.guestHooksR (σ := σ)) (hgr : a.sg.grows = true)
    (hcI : capSub insCaps a.caps = true) {K : Gam → Prop}
    (hK : ∀ Γ Γ' : Gam, Ext Γ Γ' → GamOK Γ' → K Γ → K Γ')
    {args : List (ExpHOL 64)} {L : LocalsH → Prop} {C NR SW AW ND M VB k kl vp vl : BitVec 64}
    (hev : ∀ s : State σ, L s.locals → evs s args =
      some [.val (.word M), .val (.word k), .val (.word kl), .val (.word vp), .val (.word vl)])
    (hKL : 2 * kl.toNat < 2 ^ 64)
    (hVin : ∀ Γ q mm, IA a K C NR SW AW ND M VB Γ q mm → Hooks.VInR Types.tVAL Γ vp vl)
    {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop} :
    CH σ (GI a L (IA a K C NR SW AW ND M VB))
      (.call (some (none, none)) (nm "mpt_set") args) (GP a L (IA a K C NR SW AW ND M VB) Rv)
      (cb (.call (some (none, none)) (nm "mpt_set") args)) :=
  cmps_stmt ha haC hCb haH hgr hcI hev hKL (fun Γ q mm h => h.2.2.1) hVin
    (fun s st Γ Γ' q q' hext hh hh' hmo hnf hmd hE hHR' =>
      ia_mps haC hCb hK hext hh hh' hmo hnf hmd hHR' hE)

end InitECandidate.Solver.MemSafe.Trie
