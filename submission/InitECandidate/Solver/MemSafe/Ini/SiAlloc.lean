import InitECandidate.Solver.MemSafe.Ini.SiKit

/-!
# `state_init`: `ws = alloc(40)` and `bs = alloc(80)`
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Ini
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Hooks InitECandidate.Solver.MemSafe.Trie
open InitECandidate.Solver.MemSafe.WaveHelpers

variable {σ : Type} {X : Ctx 64}

theorem siC_setG {a : Act σ} {kn : Know} {kvf : List (MlS × BitVec 64 × FK)} {Γ : Gam} {q : Ptrs}
    {s : State σ} {g : MlS} {v : ValueHOL 64} (hS : SIc a kn kvf Γ q s)
    (hW : kn.W = none ∨ g ≠ nm "ws") (hB : kn.B = none ∨ g ≠ nm "bs")
    (hSk : kn.S = none ∨ g ≠ nm "sk_buf") (hJr : kn.J = none ∨ g ≠ nm "journal") :
    SIc a kn kvf Γ q (setKvarHOLFinite .global g v s) := by
  obtain ⟨hL, hWs, hBs, hwv, hbv, hSs, hJs⟩ := hS
  refine ⟨hL, fun W hW' => ?_, fun B hB' => ?_, hwv, hbv, fun S hS' => ?_, fun J hJ' => ?_⟩
  · have hne : g ≠ nm "ws" := hW.resolve_left (by simp [hW'])
    obtain ⟨h1, h2⟩ := hWs W hW'
    exact ⟨by rw [HtabEntries.setG_ne (Ne.symm hne)]; exact h1, h2⟩
  · have hne : g ≠ nm "bs" := hB.resolve_left (by simp [hB'])
    obtain ⟨h1, h2⟩ := hBs B hB'
    exact ⟨by rw [HtabEntries.setG_ne (Ne.symm hne)]; exact h1, h2⟩
  · have hne : g ≠ nm "sk_buf" := hSk.resolve_left (by simp [hS'])
    obtain ⟨h1, h2⟩ := hSs S hS'
    exact ⟨by rw [HtabEntries.setG_ne (Ne.symm hne)]; exact h1, h2⟩
  · have hne : g ≠ nm "journal" := hJr.resolve_left (by simp [hJ'])
    obtain ⟨h1, h2⟩ := hJs J hJ'
    exact ⟨by rw [HtabEntries.setG_ne (Ne.symm hne)]; exact h1, h2⟩

/-- A fresh block is disjoint from every earlier block. -/
theorem blk_disj {a : Act σ} {q : Ptrs} {Γ : Gam} {W0 W : BitVec 64} {n0 n : Nat} (hb : BlkF a q Γ W0 n0)
    (hn0 : 0 < n0) (hn : 0 < n) (hW8 : W.toNat % 8 = 0) (hord : q.Ordered)
    (hfresh : ∀ x : Nat, W.toNat ≤ x → x < W.toNat + n → ¬ q.Allocated x) (hWn : W.toNat + n ≤ 2 ^ 64) :
    W0.toNat + n0 ≤ W.toNat ∨ W.toNat + n ≤ W0.toNat := by
  by_contra hcon
  have hmx : (BitVec.ofNat 64 (max W0.toNat W.toNat)).toNat = max W0.toNat W.toNat := by
    have := W0.isLt; have := W.isLt
    rw [BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega)]
  have h8a := hb.1
  have h1 := hb.2 (BitVec.ofNat 64 (max W0.toNat W.toNat)) ⟨by rw [hmx]; omega, by rw [hmx]; omega,
    by rw [hmx]; omega⟩
  have h2 := hfresh (max W0.toNat W.toNat) (by omega) (by omega)
  rw [hmx] at h1
  exact h2 (alloc_of_live h1.2.1)

/-- The new block is disjoint from every recorded block. -/
def DjNew (kn : Know) (W : BitVec 64) (n : Nat) : Prop :=
  (∀ W0 : BitVec 64, kn.W = some W0 → W0.toNat + 40 ≤ W.toNat ∨ W.toNat + n ≤ W0.toNat) ∧
  (∀ B0 : BitVec 64, kn.B = some B0 → B0.toNat + 80 ≤ W.toNat ∨ W.toNat + n ≤ B0.toNat) ∧
  (∀ S0 : BitVec 64, kn.S = some S0 → S0.toNat + 64 ≤ W.toNat ∨ W.toNat + n ≤ S0.toNat) ∧
  (∀ J0 : BitVec 64, kn.J = some J0 → J0.toNat + 16777216 ≤ W.toNat ∨ W.toNat + n ≤ J0.toNat)

/-- **`g = alloc(n)`** for a raw-block global `g`. -/
theorem step_alloc {a : Act σ} (ha : ActOK a guestCtx) (hX : guestCtx.code.lookup = guestCode)
    (haC : a.C = Types.guestC) (hCb : a.Cb = Types.guestC) (haH : a.H = guestHooksR (σ := σ))
    (hgr : a.sg.grows = true) {g : MlS} (hg : g ∈ hid) {n : Nat} (hn8 : n % 8 = 0) (hn : n < 2 ^ 32) (hn0 : 0 < n)
    (kn : Know) (kvf : List (MlS × BitVec 64 × FK))
    (hW : kn.W = none ∨ g ≠ nm "ws") (hB : kn.B = none ∨ g ≠ nm "bs")
    (hSk : kn.S = none ∨ g ≠ nm "sk_buf") (hJr : kn.J = none ∨ g ≠ nm "journal")
    (P : State σ → Prop) (hP : ∀ t, P t → SI a kn kvf t) (e : ExpHOL 64)
    (hev : ∀ t, P t → ev t e = some (.val (.word (BitVec.ofNat 64 n))))
    (keep : List (MlS × ValueHOL 64)) (hkeep : ∀ t, P t → ∀ q0 ∈ keep, t.globals.lookup q0.1 = some q0.2)
    (hkne : ∀ q0 ∈ keep, q0.1 ≠ gHeap ∧ q0.1 ≠ g)
    {F : State σ → ValueHOL 64 → Prop} :
    HoareG σ guestCtx P (.call (some (some (.global, g), none)) (nm "alloc") [e])
      (NQr (fun t => ∃ (W : BitVec 64) (Γ : Gam) (q : Ptrs), Ext a.Γ0 Γ ∧ Heap a Γ q (gz t) ∧
        SIc a kn kvf Γ q t ∧ t.globals.lookup g = some (.val (.word W)) ∧ BlkF a q Γ W n ∧
        DjNew kn W n ∧
        (∀ q0 ∈ keep, t.globals.lookup q0.1 = some q0.2)) F) := by
  have hsum : SumSpecA σ guestCtx a.Cb a.H (nm "alloc") ⟨[.any], [.freshArg 0 1 0], [], false⟩
      (fun _ s Γ => ReqOK ([] : List Cap) s Γ) (fun _ s Γ x => CapPW ([] : List Cap) s Γ x)
      (fun _ _ _ _ _ _ => True) := by
    rw [hCb, haH]; exact Dn.alloc_R
  have hf := FunSpec.and (ghostLift hX alloc_in_dw (sumSpecA_funSpec hsum))
    (allocSpec_alloc (σ := σ) hX)
  refine nqr_callA hf ?_
  intro s hs hPs vs hvs callee v st ⟨hR, hAl⟩ hst hval
  obtain ⟨Γ, q, hext, hh, hS⟩ := hP s hPs
  have hvs' : vs = [.val (.word (BitVec.ofNat 64 n))] := by
    obtain ⟨v1, vs1, rfl, h1, hr1⟩ := evs_cons_inv hvs
    rw [evs_nil] at hr1
    cases hr1
    rw [hev s hPs] at h1
    cases h1
    rfl
  subst hvs'
  have hord := heap_ord hh
  have hps : ptrsOf (callEntryStateHOLFinite s callee) = some q := by
    exact (AllocImpl.ptrsOf_congr (s := s) (t := callEntryStateHOLFinite s callee) rfl).trans
      ((ptrsOf_gz s).symm.trans hh.2.1)
  have hpsg : ptrsOf (callEntryStateHOLFinite (gz s) callee) = some q := hh.2.1
  have hps1 : ∀ pt ∈ (⟨[.any], [.freshArg 0 1 0], [], false⟩ : Sig).params, pt = PT.any := by simp
  obtain ⟨Γ', q', hext', hh', hmo, hnf, hnfp, hmem, hret, -⟩ := gcall ha hh hR
    (argsOK_any hps1 rfl) (fun x => argCells_any hps1) (fun c hc => by cases hc) (by simp) (fun h => by simp at h)
  have hord' := heap_ord hh'
  obtain ⟨hmem', hglob, p', hp', hordp', hmono', hvret⟩ :=
    hAl (by simp [Good]) (BitVec.ofNat 64 n) q rfl hps hord
  obtain ⟨W, hvW, hW8', hlive, hfresh⟩ := hvret v rfl
  subst hvW
  have hq' : p' = q' := by
    have h1 : ptrsOf st = some q' := (ptrsOf_gz st).symm.trans hh'.2.1
    exact Option.some.inj (hp'.symm.trans h1)
  subst hq'
  have hnW : (BitVec.ofNat 64 n).toNat = n := by
    rw [BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega)]
  rw [hnW] at hlive hfresh
  have hL := Dn.layout_of_heap haC hh
  have hglobs : ∀ g' ∈ hid, st.globals.lookup g' = s.globals.lookup g' := hR.2
  have hSc := siC_call hS hord hord' hmo hnf hext' hglobs hmem
  refine ⟨W, Γ', p', ext_trans hext hext', ?_, ?_, ?_, ?_, ?_, ?_⟩
  · rw [gz_setKvar_hid hg, gz_locals]
    exact heap_congr (s := gz st) ha.hH rfl rfl rfl rfl hh'
  · exact siC_setG hSc hW hB hSk hJr
  · exact HtabEntries.setG_self
  · refine ⟨hW8', fun c hc => ?_⟩
    obtain ⟨hc8, hc1, hc2⟩ := hc
    have hge : W.toNat ≤ c.toNat := by omega
    have hfc := hfresh c.toNat hge hc2
    refine ⟨?_, ?_, fun hal => hfc (alloc_mono hh.2.2.1 hal)⟩
    · rintro ⟨o, ho, h1, h2⟩
      rcases hnfp rfl o ho c h1 h2 with ⟨o0, ho0, -, -, h1', h2'⟩ | hfr
      · exact hfc (HtabEntries.alloc_of_in hord hL ⟨o0, ho0, h1', h2'⟩)
      · unfold Fresh at hfr
        omega
    · obtain ⟨hl1, hl2⟩ := hlive
      exact ⟨by omega, by omega⟩
  · have hWn : W.toNat + n ≤ 2 ^ 64 := by
      have := heap_ord hh'
      have hs : scratchEnd < 2 ^ 64 := by decide
      obtain ⟨hl1, hl2⟩ := hlive
      obtain ⟨-, d2, -⟩ := hord'
      have : heapEnd < 2 ^ 64 := by decide
      omega
    have hfr : ∀ x : Nat, W.toNat ≤ x → x < W.toNat + n → ¬ q.Allocated x := hfresh
    obtain ⟨-, hWs, hBs, -, -, hSs, hJs⟩ := hS
    refine ⟨fun W0 h => blk_disj (hWs W0 h).2 (by omega) hn0 hW8' hord hfr hWn,
      fun B0 h => blk_disj (hBs B0 h).2.1 (by omega) hn0 hW8' hord hfr hWn,
      fun S0 h => blk_disj (hSs S0 h).2 (by omega) hn0 hW8' hord hfr hWn,
      fun J0 h => blk_disj (hJs J0 h).2 (by omega) hn0 hW8' hord hfr hWn⟩
  · intro q0 hq0
    obtain ⟨hn1, hn2⟩ := hkne q0 hq0
    rw [HtabEntries.setG_ne hn2]
    show st.globals.lookup q0.1 = _
    rw [hglob q0.1 hn1]
    exact hkeep s hPs q0 hq0

end InitECandidate.Solver.MemSafe.Ini

#print axioms InitECandidate.Solver.MemSafe.Ini.step_alloc
