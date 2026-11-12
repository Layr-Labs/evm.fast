import InitECandidate.Solver.MemSafe.Trie.CsrKey

set_option autoImplicit false
set_option maxRecDepth 100000
set_option linter.unusedVariables false

/-!
# `compute_state_root`: small rules for the loops

* `gp_ite`, `hoareG_exL`, `wv3_of_shape`, `ne0_of_then`.
* `mps_ia`: `mpt_set(mpt, key, klen, vp, vl);` under `IA`.
-/

namespace InitECandidate.Solver.MemSafe.Trie
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Rec InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.Dn InitECandidate.Solver.MemSafe.Ins
open InitECandidate.Solver.MemSafe.Hooks InitECandidate.Solver.MemSafe.Types

variable {σ : Type}

theorem gp_ite {a : Act σ} {L L' : LocalsH → Prop} {E E' : Gam → Ptrs → Mem → Prop}
    {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop} {c : ExpHOL 64} {p q : ProgHOL 64}
    (hp : HoareG σ guestCtx (fun s => GI a L E s ∧ ∃ w, ev s c = some (.val (.word w)) ∧ w ≠ 0) p
      (GP a L' E' Rv))
    (hq : HoareG σ guestCtx (fun s => GI a L E s ∧ ev s c = some (.val (.word 0))) q (GP a L' E' Rv)) :
    HoareG σ guestCtx (GI a L E) (.ite c p q) (GP a L' E' Rv) :=
  hoareG_ite hp hq

theorem hoareG_exL {a : Act σ} {α : Type} {L : α → LocalsH → Prop} {E : Gam → Ptrs → Mem → Prop}
    {c : ProgHOL 64} {Q : Option (PanSemResultExact 64) → State σ → Prop}
    (h : ∀ x, HoareG σ guestCtx (GI a (L x) E) c Q) :
    HoareG σ guestCtx (GI a (fun m => ∃ x, L x m) E) c Q :=
  fun s hs ⟨⟨x, hL⟩, r⟩ => h x s hs ⟨hL, r⟩

theorem wv3_of_shape {A : ValueHOL 64}
    (h : shapeEqHOL (shapeOfHOLExact A) (.comb [.one, .one, .one]) = true) :
    ∃ x y z : BitVec 64, A = wv [x, y, z] := by
  obtain ⟨ws, hl, rfl⟩ := eq_wv_of_shape (k := 3) ((shapeEqHOL_eq_true _ _).mp h)
  match ws, hl with
  | [x, y, z], _ => exact ⟨x, y, z, rfl⟩

theorem ne0_of_then {s : State σ} {x : ExpHOL 64} {a : BitVec 64}
    (hx : ev s x = some (.val (.word a)))
    (hc : ∃ w, ev s (.cmp .notEqual x (cw 0)) = some (.val (.word w)) ∧ w ≠ 0) : a ≠ 0 := by
  have := Rec.cmpT hc hx (ev_cw s 0)
  intro h
  subst h
  simp [Flapjack.Compiler.Encoders.Asm.wordCmpHOL] at this

theorem eq0_of_then {s : State σ} {x : ExpHOL 64} {a : BitVec 64}
    (hx : ev s x = some (.val (.word a)))
    (hc : ∃ w, ev s (.cmp .equal x (cw 0)) = some (.val (.word w)) ∧ w ≠ 0) : a = 0 := by
  have := Rec.cmpT hc hx (ev_cw s 0)
  simpa [Flapjack.Compiler.Encoders.Asm.wordCmpHOL] using this

/-- `IA` after an `mpt_set` on the handle. -/
theorem ia_mps {a : Act σ} (haC : a.C = Types.guestC) (hCb : a.Cb = Types.guestC) {K : Gam → Prop}
    (hK : ∀ Γ Γ' : Gam, Ext Γ Γ' → GamOK Γ' → K Γ → K Γ')
    {C NR SW AW ND M VB k kl vp vl : BitVec 64} {Γ Γ' : Gam} {q q' : Ptrs} {s st : State σ}
    (hext : Ext Γ Γ') (hh : Heap a Γ q s) (hh' : Heap a Γ' q' st) (hmo : q.Mono q')
    (hnf : NewFresh Γ Γ' q q')
    (hmd : Mod a mpsSig insCaps [.val (.word M), .val (.word k), .val (.word kl), .val (.word vp),
      .val (.word vl)] Γ q s st)
    (hHR' : HRec Γ' q' st.memory M) (hIA : IA a K C NR SW AW ND M VB Γ q s.memory) :
    IA a K C NR SW AW ND M VB Γ' q' st.memory := by
  obtain ⟨hTB, hND, hHR, hFB, hMV, hKΓ⟩ := hIA
  have hord := heap_ord hh
  have hord' := heap_ord hh'
  refine ⟨tb_ext hext hTB, ?_, ⟨hHR', hHR.2⟩, fblk_persist_g hFB hord hord' hnf hmo, hMV,
    hK _ _ hext (gamOK_of_layout (layout_of_heap haC hh')) hKΓ⟩
  exact ndk_call haC hCb (by unfold CapsAvoid insCaps leafCaps brCaps; decide) hmd hext hh
    (fun y hy => hrec_cells hHR.1 (argCells_mps hy)) hND

theorem mps_ia {a : Act σ} (ha : ActOK a guestCtx) (haC : a.C = Types.guestC) (hCb : a.Cb = Types.guestC)
    (haH : a.H = Hooks.guestHooksR (σ := σ)) (hgr : a.sg.grows = true)
    (hcI : capSub insCaps a.caps = true) {K : Gam → Prop}
    (hK : ∀ Γ Γ' : Gam, Ext Γ Γ' → GamOK Γ' → K Γ → K Γ')
    {args : List (ExpHOL 64)} {L : LocalsH → Prop} {C NR SW AW ND M VB k kl vp vl : BitVec 64}
    (hev : ∀ s : State σ, L s.locals → evs s args =
      some [.val (.word M), .val (.word k), .val (.word kl), .val (.word vp), .val (.word vl)])
    (hKL : 2 * kl.toNat < 2 ^ 64)
    (hVin : ∀ Γ q mm, IA a K C NR SW AW ND M VB Γ q mm → Hooks.VInR Types.tVAL Γ vp vl)
    {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop} :
    HoareG σ guestCtx (GI a L (IA a K C NR SW AW ND M VB))
      (.call (some (none, none)) (nm "mpt_set") args) (GP a L (IA a K C NR SW AW ND M VB) Rv) :=
  mps_stmt ha haC hCb haH hgr hcI hev hKL (fun Γ q mm h => h.2.2.1) hVin
    (fun s st Γ Γ' q q' hext hh hh' hmo hnf hmd hE hHR' =>
      ia_mps haC hCb hK hext hh hh' hmo hnf hmd hHR' hE)

end InitECandidate.Solver.MemSafe.Trie
