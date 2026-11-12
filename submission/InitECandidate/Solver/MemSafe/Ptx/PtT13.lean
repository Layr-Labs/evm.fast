import InitECandidate.Solver.MemSafe.Ptx.PtT12

/-!
# F3g: `var rc = encode_receipt(..)` (the end of the first part of the tail)
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Ptx
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry

variable {σ : Type}

theorem rcpt_fin : ptAllNames.contains (nm "encode_receipt") = true := by decide_cbv

theorem evs4 {s : State σ} {a b c d : ExpHOL 64} {vs : List (ValueHOL 64)} (h : evs s [a, b, c, d] = some vs) :
    ∃ x y z w, vs = [x, y, z, w] ∧ ev s d = some w := by
  obtain ⟨x, vs1, rfl, hx, h1⟩ := Spec.evs_cons_inv h
  obtain ⟨y, vs2, rfl, hy, h2⟩ := Spec.evs_cons_inv h1
  obtain ⟨z, vs3, rfl, hz, h3⟩ := Spec.evs_cons_inv h2
  obtain ⟨w, rfl, hw⟩ := evs_single h3
  exact ⟨x, y, z, w, rfl, hw⟩

/-- **`var rc = encode_receipt(a1, a2, a3, logs); k`**: the result is a slice of a fresh block adopted as a `tVAL`. -/
theorem tl_rcpt {K : TlCtx σ} {ref : BitVec 64 → BitVec 64} {Z : BitVec 64 → Prop} {O : List Obj} {En : Env} {lw : BitVec 64}
    {a1 a2 a3 : ExpHOL 64} {k : ProgHOL 64} {QT : Option (PanSemResultExact 64) → State σ → Prop}
    (hP : TlPre K) (hR : HypRcpt σ) (hLg : LgOut K ref Z O lw) (hQT : ResIns (nm "rc") QT)
    (hlg : En (nm "logs") = some (.val (.word lw)))
    (hk : ∀ (rp rl : BitVec 64) (buf n : Nat), 1 ≤ rl.toNat → buf ≤ rp.toNat → rp.toNat + rl.toNat ≤ buf + n →
      buf + n < 2 ^ 64 →
      Hoare σ guestCtx (PAg (TL K.A ref Z (O ++ [⟨BitVec.ofNat 64 buf, tVAL, n⟩])) (En.set (nm "rc") (wv [rp, rl]))) k QT) :
    Hoare σ guestCtx (PAg (TL K.A ref Z O) En)
      (.decCall (nm "rc") (.comb [.one, .one]) (nm "encode_receipt") [a1, a2, a3, lv (nm "logs")] k) QT := by
  refine hdecCallK hQT (hR.and (funSpec_pt_gw_all guestCtx_code rcpt_fin)) ?_
  intro s hs hpa vs hvs callee v st ⟨hR', hgl⟩ hst hsh
  obtain ⟨⟨Γ, p, hr⟩, hlk⟩ := hpa
  obtain ⟨x1, x2, x3, w4, rfl, hw4⟩ := evs4 hvs
  have hw4' : w4 = .val (.word lw) := evI_lv (hlk _ _ hlg) w4 hw4
  subst hw4'
  have hre : TlS K.A ref Z O (callEntryStateHOLFinite s callee) Γ p := tl_loc hr callee (s.clock - 1)
  have hrh := tl_heapOnly hre hP.heap0
  have hLK := hLg.hLK _ _ _ hrh
  have hlay := tl_layout hrh
  have hord := tl_ord hrh
  have hBelow : Aw.Below (hpart Γ) p.hp := by
    intro o ho
    obtain ⟨ho', hreg⟩ := mem_hpart.mp ho
    have := (Struct.obj_bounds hord hlay ho).2.2.1 hreg
    exact this
  have hE := hR' v rfl (hpart Γ) p.hp p lw hrh.hG hrh.hp hBelow hord.2.2.2.2.2.1 hord.1 le_rfl (by simp [argW, wordOf]) hLK
  have hgl' : ∀ g, cW.contains g = false → st.globals.lookup g = (callEntryStateHOLFinite s callee).globals.lookup g :=
    hgl
  obtain ⟨Γ'', p', rp, rl, buf, n, hfl, hrun, -, -, hrl, -, hb1, hb2, hbnd⟩ := tl_encout hrh hE hgl'
  obtain ⟨ws, hlen, rfl⟩ := eq_wv_of_shapeEq' (k := 2) hsh
  obtain ⟨a, b, rfl⟩ : ∃ a b, ws = [a, b] := by
    match ws, hlen with
    | [a, b], _ => exact ⟨a, b, rfl⟩
  rw [Spec.Fq12.flatten_wv] at hfl
  simp only [List.map_cons, List.map_nil, List.cons.injEq, HolWordLab.word.injEq, and_true] at hfl
  obtain ⟨rfl, rfl⟩ := hfl
  refine hoare_pre (hk a b buf n hrl hb1 hb2 hbnd) ?_
  intro t _ ht
  subst ht
  exact ⟨⟨Γ'', p', tl_set (tl_loc hrun s.locals st.clock) (nm "rc") _⟩, lke_set (lke_restore hlk) _ _⟩

theorem enL_none (K : TlCtx σ) (v : ValueHOL 64) {x : MlS} (h1 : x ≠ nm "index") (h2 : x ≠ nm "sender")
    (h3 : x ≠ nm "out") (h4 : x ≠ nm "logs") : ((EnT0 K).set (nm "logs") v) x = none := by
  rw [env_set_ne _ _ h4]; exact enT0_none K h1 h2 h3

/-- `ptS143` to `ptS148`: `var succeeded`, the receipt call. -/
theorem tl_p4 {K : TlCtx σ} {ref : BitVec 64 → BitVec 64} {Z : BitVec 64 → Prop} {O : List Obj} {lw : BitVec 64}
    {QT : Option (PanSemResultExact 64) → State σ → Prop} (hP : TlPre K) (hR : HypRcpt σ) (hLg : LgOut K ref Z O lw)
    (hQT : LocIns QT)
    (hk : ∀ (rp rl : BitVec 64) (buf n : Nat), 1 ≤ rl.toNat → buf ≤ rp.toNat → rp.toNat + rl.toNat ≤ buf + n →
      buf + n < 2 ^ 64 →
      Hoare σ guestCtx (PAg (TL K.A ref Z (O ++ [⟨BitVec.ofNat 64 buf, tVAL, n⟩]))
        (((EnT0 K).set (nm "logs") (.val (.word lw))).set (nm "rc") (wv [rp, rl]))) ptS148 QT) :
    Hoare σ guestCtx (PAg (TL K.A ref Z O) ((EnT0 K).set (nm "logs") (.val (.word lw)))) ptS143 QT := by
  have hB := bloc_tl K.A ref Z (O := O)
  unfold ptS143
  refine hdecF_g hB (locIns_resIns hQT _)
    (enL_none K _ (by decide) (by decide) (by decide) (by decide)) ?_
  unfold ptS145
  refine hseqN (hn_iteAssign hB (enL_none K _ (by decide) (by decide) (by decide) (by decide))) ?_
  unfold ptS146
  exact tl_rcpt hP hR hLg (locIns_resIns hQT _) (env_set_self _ _ _) hk

end InitECandidate.Solver.MemSafe.Ptx
