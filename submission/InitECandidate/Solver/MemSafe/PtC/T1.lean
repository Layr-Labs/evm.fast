import InitECandidate.Solver.MemSafe.PtC.T0

/-!
# PtC: stages 1 to 3
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.PtC
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry
open InitECandidate.Solver.MemSafe.Ptx

variable {σ : Type}


theorem cw_rcpt {K : TlCtx σ} {ref : BitVec 64 → BitVec 64} {Z : BitVec 64 → Prop} {O : List Obj} {En : Env} {lw : BitVec 64}
    {a1 a2 a3 : ExpHOL 64} {k : ProgHOL 64} {QT : Option (PanSemResultExact 64) → State σ → Prop}
    (hP : TlPre K) (hR : HypRcpt σ) (hLg : LgOut K ref Z O lw) (hQT : ResIns (nm "rc") QT)
    (hlg : En (nm "logs") = some (.val (.word lw)))
    (hk : ∀ (rp rl : BitVec 64) (buf n : Nat), 1 ≤ rl.toNat → buf ≤ rp.toNat → rp.toNat + rl.toNat ≤ buf + n →
      buf + n < 2 ^ 64 →
      CW' (PAg (TL K.A ref Z (O ++ [⟨BitVec.ofNat 64 buf, tVAL, n⟩])) (En.set (nm "rc") (wv [rp, rl]))) k (cbd k) QT) :
    CW' (PAg (TL K.A ref Z O) En)
      (.decCall (nm "rc") (.comb [.one, .one]) (nm "encode_receipt") [a1, a2, a3, lv (nm "logs")] k)
      (cbd (.decCall (nm "rc") (.comb [.one, .one]) (nm "encode_receipt") [a1, a2, a3, lv (nm "logs")] k)) QT := by
  have hB := bloc_tl K.A ref Z (O := O)
  refine cw_decCall_gen (B := TL K.A ref Z O) (En := En)
    (Bk := fun v t => ∃ (rp rl : BitVec 64) (buf n : Nat), 1 ≤ rl.toNat ∧ buf ≤ rp.toNat ∧
      rp.toNat + rl.toNat ≤ buf + n ∧ buf + n < 2 ^ 64 ∧ v = wv [rp, rl] ∧
      TL K.A ref Z (O ++ [⟨BitVec.ofNat 64 buf, tVAL, n⟩]) t)
    (Ek := fun v => En.set (nm "rc") v) (PreC := fun _ _ => True) hQT ?_ ?_ ?_ ?_ (hszW _ (sz_comb 2 (by norm_num)))
    (calleeCostP_tbl (by decide_cbv)) (fun _ _ _ _ _ _ => trivial) ?_
  · intro k' Q' hQ' hk'
    refine tl_rcpt hP hR hLg hQ' hlg fun rp rl buf n h1 h2 h3 h4 => ?_
    exact hoare_pre (hk' (wv [rp, rl]) (shEq_wv _ _ rfl)) fun t _ ht => ⟨⟨rp, rl, buf, n, h1, h2, h3, h4, rfl, ht.1⟩, ht.2⟩
  · intro v t l c ⟨rp, rl, buf, n, h1, h2, h3, h4, hv, hb⟩
    exact ⟨rp, rl, buf, n, h1, h2, h3, h4, hv, bloc_tl K.A ref _ t l c hb⟩
  · intro s st v hlk
    exact lke_set (lke_restore hlk) _ v
  · intro v t w hl hlw ⟨rp, rl, buf, n, h1, h2, h3, h4, hv, hb⟩
    have h1' := hl (nm "rc") v (env_set_self _ _ _)
    rw [h1'] at hlw
    obtain rfl : v = w := Option.some.inj hlw
    exact ⟨rp, rl, buf, n, h1, h2, h3, h4, hv, hb⟩
  · intro v hv
    refine cw_pre_ex fun s _ ⟨⟨rp, rl, buf, n, h1, h2, h3, h4, hv', hb⟩, hl⟩ => ?_
    subst hv'
    exact ⟨_, ⟨hb, hl⟩, hk rp rl buf n h1 h2 h3 h4⟩


theorem cw_decCallKT {P : State σ → Prop} {Q : Option (PanSemResultExact 64) → State σ → Prop}
    {rn f : MlS} {sh : ShapeHOL} {args : List (ExpHOL 64)} {k : ProgHOL 64}
    {R : List (ValueHOL 64) → State σ → PanSemResultExact 64 → State σ → Prop}
    (hQ : ResIns rn Q) (hf : FunSpec σ guestCtx f R)
    (h : ∀ s : State σ, InCtx s guestCtx → P s → ∀ vs, evs s args = some vs →
      ∀ callee v (st : State σ), R vs (callEntryStateHOLFinite s callee) (.returned v) st →
        InCtx st guestCtx → shapeEqHOL (shapeOfHOLExact v) sh = true →
        CW' (fun t => t = setVarHOLFinite rn v { st with locals := s.locals }) k (cbd k) Q)
    (hc : (BlsSlotCost.Callers.table12 f).isSome = true := by decide_cbv) :
    CW' P (.decCall rn sh f args k) (cbd (.decCall rn sh f args k)) Q :=
  Eb.cw_decCallK (PreC := fun _ _ => True) hQ hf (calleeCostP_tbl hc) (fun _ _ _ _ _ _ => trivial) h

end InitECandidate.Solver.MemSafe.PtC
