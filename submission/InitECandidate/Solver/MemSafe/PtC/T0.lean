import InitECandidate.Solver.MemSafe.PtC.S9

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


section pag
variable {B : State σ → Prop} {En : Env} {QT : Option (PanSemResultExact 64) → State σ → Prop}

theorem cw_decT_g (hB : BLoc B) {n : MlS} (hQT : ResIns n QT) {sh : ShapeHOL} {e : ExpHOL 64} {body : ProgHOL 64}
    {w : BitVec 64} (he : ∀ s : State σ, PAg B En s → ∀ v, ev s e = some v → v = .val (.word w))
    (hk : CW' (PAg B (En.set n (.val (.word w)))) body (cbd body) QT) :
    CW' (PAg B En) (.dec n sh e body) (cbd (.dec n sh e body)) QT :=
  ⟨Inv.costP_dec fun s hs hP v hv hsh => hk.1.pre fun t _ ht => by
      subst ht
      have := he s hP v hv
      subst this
      exact pag_set hB hP n _,
   hdecT_g hB hQT he hk.2⟩

theorem cw_decF_g (hB : BLoc B) {n : MlS} (hQT : ResIns n QT) {sh : ShapeHOL} {e : ExpHOL 64} {body : ProgHOL 64}
    (hn : En n = none) (hk : CW' (PAg B En) body (cbd body) QT) :
    CW' (PAg B En) (.dec n sh e body) (cbd (.dec n sh e body)) QT :=
  ⟨Inv.costP_dec fun s hs hP v hv hsh => hk.1.pre fun t _ ht => by
      subst ht
      exact pag_set_other hB hP hn v,
   hdecF_g hB hQT hn hk.2⟩

/-- A table call with an untracked result (`PAg`). -/
theorem cw_decCallUg {rn f : MlS} {sh : ShapeHOL} {args : List (ExpHOL 64)} {k : ProgHOL 64}
    (hB : BLoc B) (hQ : ResIns rn QT) (hrn : En rn = none)
    (hrule : ∀ (k' : ProgHOL 64) (Q' : Option (PanSemResultExact 64) → State σ → Prop), ResIns rn Q' →
      Hoare σ guestCtx (PAg B En) k' Q' → Hoare σ guestCtx (PAg B En) (.decCall rn sh f args k') Q')
    (hk : CW' (PAg B En) k (cbd k) QT)
    (hsz : ∀ c : Flapjack.Pancake.PanLang.StructContextExact, Flapjack.Pancake.PanLang.sizeOfShapeWithContextHOL c sh ≤ 32 := by first | exact sz_one | exact sz_comb 2 (by norm_num) | exact sz_comb 3 (by norm_num) | exact sz_comb 4 (by norm_num) | exact sz_comb 5 (by norm_num))
    (hex : ∃ v0 : ValueHOL 64, shapeEqHOL (shapeOfHOLExact v0) sh = true := by
      first
        | exact ⟨.val (.word 0), (shapeEqHOL_eq_true _ _).mpr (shapeOf_val _)⟩
        | exact ⟨wv [0, 0], shEq_wv _ _ rfl⟩ | exact ⟨wv [0, 0, 0], shEq_wv _ _ rfl⟩
        | exact ⟨wv [0, 0, 0, 0], shEq_wv _ _ rfl⟩ | exact ⟨wv [0, 0, 0, 0, 0], shEq_wv _ _ rfl⟩)
    (hf : (Shards.finalState.1.lookup f).isSome = true := by decide_cbv) :
    CW' (PAg B En) (.decCall rn sh f args k) (cbd (.decCall rn sh f args k)) QT := by
  refine cw_decCall_gen (B := B) (En := En) (Bk := fun _ t => B t) (Ek := fun _ => En)
    (PreC := fun _ _ => True) hQ ?_ ?_ ?_ ?_ (hszW _ hsz) (calleeCostP_tbl hf) (fun _ _ _ _ _ _ => trivial) (fun _ _ => hk)
  · intro k' Q' hQ' hk'
    obtain ⟨v0, hv0⟩ := hex
    exact hrule k' Q' hQ' (fun t hs ht => hk' v0 hv0 t hs ⟨ht.1, ht.2⟩)
  · intro v t l c hb
    exact hB t l c hb
  · intro s st v hlk
    exact lke_set_other (lke_restore hlk) hrn v
  · intro v t w hl hlw hb
    exact hb

theorem cw_decAnyT {f : MlS} {sg : Sig} {args : List (ExpHOL 64)} {rn : MlS} {sh : ShapeHOL} {k : ProgHOL 64}
    {A : TlA σ} {ref : BitVec 64 → BitVec 64} {Z : BitVec 64 → Prop} {O : List Obj}
    (hQT : ResIns rn QT) (hf : CSumm σ guestCtx guestC (HR σ) f sg []) (hps : ∀ pt ∈ sg.params, pt = .any)
    (hgw : sg.gw = []) (hfin : ptAllNames.contains f = true) (hlen : sg.params.length = args.length)
    (hrn : En rn = none) (hk : CW' (PAg (TL A ref Z O) En) k (cbd k) QT)
    (hszc : ∀ c : Flapjack.Pancake.PanLang.StructContextExact, Flapjack.Pancake.PanLang.sizeOfShapeWithContextHOL c sh ≤ 32 := by first | exact sz_one | exact sz_comb 2 (by norm_num) | exact sz_comb 3 (by norm_num) | exact sz_comb 4 (by norm_num) | exact sz_comb 5 (by norm_num))
    (hexc : ∃ v0 : ValueHOL 64, shapeEqHOL (shapeOfHOLExact v0) sh = true := by
      first
        | exact ⟨.val (.word 0), (shapeEqHOL_eq_true _ _).mpr (shapeOf_val _)⟩
        | exact ⟨wv [0, 0], shEq_wv _ _ rfl⟩ | exact ⟨wv [0, 0, 0], shEq_wv _ _ rfl⟩
        | exact ⟨wv [0, 0, 0, 0], shEq_wv _ _ rfl⟩ | exact ⟨wv [0, 0, 0, 0, 0], shEq_wv _ _ rfl⟩)
    (hfc : (Shards.finalState.1.lookup f).isSome = true := by decide_cbv) :
    CW' (PAg (TL A ref Z O) En) (.decCall rn sh f args k) (cbd (.decCall rn sh f args k)) QT :=
  cw_decCallUg (bloc_tl A ref Z) hQT hrn (fun _ _ hq hk' => hdecAnyT hq hf hps hgw hfin hlen hrn hk') hk hszc hexc hfc

end pag

end InitECandidate.Solver.MemSafe.PtC
