import InitECandidate.Solver.MemSafe.Ini.SiNew

/-!
# `state_init`: `var root = decode_witness_to_mpt(nodedb, state_root)`
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
open InitECandidate.Solver.MemSafe.WaveHelpers InitECandidate.Solver.Wit

variable {σ : Type} {X : Ctx 64}

/-- A frozen node DB of the entry stays a frozen node DB (its cells are `prot` cells of old objects). -/
theorem ndbR_heap {a : Act σ} (ha : ActOK a guestCtx) (haC : a.C = Types.guestC) (hcaps : a.caps = [])
    (hargs : ∀ x, ¬ ArgCells a.sg.params a.vs x) (hL0 : Layout Types.guestC a.p0 a.Γ0)
    {Γ : Gam} {q : Ptrs} {s : State σ} {db : BitVec 64} (hh : Heap a Γ q s) (hext : Ext a.Γ0 Γ)
    (hND : Hooks.NdbR a.Γ0 a.s0.memory db) : Hooks.NdbR Γ s.memory db := by
  have hfr : ∀ x, Hooks.NdbFp a.s0.memory db x → s.memory x = a.s0.memory x := by
    intro x hx
    have hr := Hooks.ndbFp_rcell hND hx
    apply hh.2.2.2.2.2.1 x
    rintro (h | h | h | ⟨-, c, hc, -⟩)
    · rw [haC] at h; exact rcell_not_wcell ha.hord0 hL0 hr h
    · exact hargs x h
    · exact h (rcell_alloc hL0 hr)
    · rw [hcaps] at hc; cases hc
  exact Hooks.ndbR_ext hext (Hooks.ndb_frame hND hfr).1

/-- **`var root = decode_witness_to_mpt(nodedb, state_root); k`**. -/
theorem step_dwtm {a : Act σ} (ha : ActOK a guestCtx) (hX : guestCtx.code.lookup = guestCode)
    (haC : a.C = Types.guestC) (hCb : a.Cb = Types.guestC) (haH : a.H = guestHooksR (σ := σ))
    (hgr : a.sg.grows = true) (hcaps : a.caps = [])
    (hargs : ∀ x, ¬ ArgCells a.sg.params a.vs x) (hL0 : Layout Types.guestC a.p0 a.Γ0)
    {db rt : BitVec 64} {k1 k2 : FK} (hND : Hooks.NdbR a.Γ0 a.s0.memory db)
    {kvf : List (MlS × BitVec 64 × FK)} (hdb : (nm "nodedb", db, k1) ∈ kvf)
    (hrt : (nm "state_root", rt, k2) ∈ kvf) (hkvf : ∀ q ∈ kvf, q.1 ≠ nm "root") (kn : Know)
    {F : State σ → ValueHOL 64 → Prop} (hF' : CongrF F) {k : ProgHOL 64} {J2 : State σ → Prop}
    (hk : ∀ R : BitVec 64, HoareG σ guestCtx (SI a kn ((nm "root", R, Types.nodeU) :: kvf)) k (NQr J2 F)) :
    HoareG σ guestCtx (SI a kn kvf)
      (.decCall (nm "root") .one (nm "decode_witness_to_mpt") [lv (nm "nodedb"), lv (nm "state_root")] k)
      (NQr (fun _ => True) F) := by
  have hsum := sumSpecA_mono (Trie.sumSpecA_dwtm_F (σ := σ)) (fun _ _ _ h => h)
    (PW' := fun _ s Γ x => CapPW ([] : List Cap) s Γ x)
    (fun _ _ _ _ h => h.elim) (fun _ _ _ _ _ _ h => h)
  have hsum' : SumSpecA σ guestCtx a.Cb a.H (nm "decode_witness_to_mpt") Trie.dwFSig Dn.DwTPre
      (fun _ s Γ x => CapPW ([] : List Cap) s Γ x)
      (fun vs s Γ r t Γ' => Dn.ScrOld Γ Γ' ∧ ∀ v, r = .returned v → ∀ p0 p', ptrsOf s = some p0 →
        ptrsOf t = some p' → ∃ R : BitVec 64, v = .val (.word R) ∧ Fits Γ' Types.nodeU R) := by
    rw [hCb, haH]; exact hsum
  have hf := ghostLift hX dwtm_in_dw (sumSpecA_funSpec hsum')
  refine nqr_decCall hF' hf (J1 := fun v t' => ∃ R, v = .val (.word R) ∧
    SI a kn ((nm "root", R, Types.nodeU) :: kvf) t') (J2 := J2) ?_ ?_ (fun _ _ _ _ => trivial)
  · intro s hs ⟨Γ, q, hext, hh, hS⟩ vs hvs callee v st hR hst hsh
    have e1 : ev s (lv (nm "nodedb")) = some (.val (.word db)) := (hS.1 _ hdb).1
    have e2 : ev s (lv (nm "state_root")) = some (.val (.word rt)) := (hS.1 _ hrt).1
    have hvs' : vs = [.val (.word db), .val (.word rt)] := by
      obtain ⟨v1, vs1, rfl, h1, hr1⟩ := evs_cons_inv hvs
      obtain ⟨v2, vs2, rfl, h2, hr2⟩ := evs_cons_inv hr1
      rw [evs_nil] at hr2
      cases hr2
      rw [e1] at h1; rw [e2] at h2
      cases h1; cases h2
      rfl
    subst hvs'
    have hvw := val_of_shapeEq_one' hsh
    have hord := heap_ord hh
    have hLq := Dn.layout_of_heap haC hh
    have hNd : Hooks.NdbR Γ s.memory db := ndbR_heap (s := gz s) ha haC hcaps hargs hL0 hh hext hND
    have hps : ptrsOf (callEntryStateHOLFinite (gz s) callee) = some q := hh.2.1
    have hps1 : ∀ pt ∈ Trie.dwFSig.params, pt = PT.any := by simp [Trie.dwFSig]
    obtain ⟨Γ', q', hext', hh', hmo, hnf, hnfp, hmem, hret, hQ⟩ := gcall ha hh hR
      (argsOK_any hps1 rfl) (fun x => argCells_any hps1)
      ⟨⟨db, .val (.word rt), rfl, q, hps, hord, ndbW_of_ndbR hLq hNd⟩, db, .val (.word rt), rfl, hNd⟩
      (by simp [Trie.dwFSig]) (fun _ => hgr)
    obtain ⟨R, hvR, hfit⟩ := hQ.2 v (by obtain ⟨T, rfl⟩ := hvw; rfl) q q' hps hh'.2.1
    have hord' := heap_ord hh'
    have hglobs : ∀ g' ∈ hid, st.globals.lookup g' = s.globals.lookup g' := hR.2
    have hSc := siC_call hS hord hord' hmo hnf hext' hglobs hmem
    refine ⟨R, hvR, Γ', q', ext_trans hext hext', ?_, ?_⟩
    · exact heap_congr (s := gz st) ha.hH rfl rfl rfl rfl hh'
    · subst hvR
      refine siC_locals hSc ?_ rfl rfl
      intro q0 hq0
      rcases List.mem_cons.mp hq0 with rfl | hq0
      · exact ⟨lk_set_self _ _ _, hfit⟩
      · obtain ⟨h1, h2⟩ := hSc.1 q0 hq0
        exact ⟨by rw [lk_set_ne _ _ (Ne.symm (hkvf q0 hq0))]; exact h1, h2⟩
  · intro v s hs ⟨T, hv, hP⟩ hg
    subst hv
    exact hk T s hs hP hg

end InitECandidate.Solver.MemSafe.Ini

#print axioms InitECandidate.Solver.MemSafe.Ini.step_dwtm
