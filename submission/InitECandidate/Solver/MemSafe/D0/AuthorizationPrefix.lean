import InitECandidate.Solver.MemSafe.D0.AuthorizationSetFor

/-!
# `set_delegation`: cost at the table updates
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace InitECandidate.Solver.MemSafe.D0
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types InitECandidate.Solver.MemSafe.Frames

variable {σ : Type}

private theorem costP_seq_of_plp {u0 : State σ} {K : State σ → Prop} {L : Locs → Prop}
    {a b : ProgHOL 64} {Ba Bb : Nat}
    (ha : Cost σ guestCtx a Ba)
    (hPost : HoareG σ guestCtx (fun t => t = u0) a (PLP K L))
    (hb : ∀ t, K t → L t.locals → Inv.CostP σ guestCtx (fun s => s = t) b Bb) :
    Inv.CostP σ guestCtx (fun t => t = u0) (.seq a b) (Ba + Bb) := by
  refine Inv.costP_seq (R := fun t => K t ∧ L t.locals) (Inv.costP_of_cost ha) ?_ ?_
  · intro s hctx hp ht hn
    have post := hoare_of_hoareG hPost s hctx hp ht
    rw [hn] at post
    rcases post with ⟨_, hk, hl⟩ | ⟨hn', _⟩
    · exact ⟨hk, hl⟩
    · exact (hn' rfl).elim
  · intro s hctx ⟨hk, hl⟩ hgood
    exact hb s hk hl s hctx rfl hgood

private abbrev tableSetPrice : Nat := 340282366920938464441052043338374447207

private theorem tableSet_cost (args : List (ExpHOL 64)) : Cost σ guestCtx
    (callD (nm "htab_set") args) tableSetPrice := by
  have hprice : CalleeCost σ guestCtx (nm "htab_set") (tableSetPrice - 1) :=
    calleeCost_of_tbl (Shards.finalState_sound_guest (σ := σ)).1 (by rfl)
  exact cost_call (Bh := 0) hprice (by intro _ _ _ _ h; cases h)

section
local notation "HJ" => (Hooks.guestHooksR (σ := σ))
local notation "gwJ" => [Hooks.gJn]
variable {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {fs : List Frame}
  {e c : BitVec 64} {rest : List Frame} {mg : BitVec 64}

/-- Stage `if vz == 0 { htab_set(written, msg[32], 1); } var set_for = …`. -/
theorem authorizationS3_cost {tE : Nat} (hTE : TeHook σ tE) (hRA : RaH σ) (hSC : SetCodeH σ)
    (hfs : fs = (e, c) :: rest) {u0 : State σ}
    (hu : KP HJ gwJ Γ0 s0 p0 fs e mg u0) {W T Bv vzv : BitVec 64}
    (hl : LA u0.locals [(nm "vz", .val (.word vzv)), (nm "written", .val (.word W)),
      (nm "benv", .val (.word Bv)), (nm "te", .val (.word T)), (nm "msg", .val (.word mg))])
    (hW : Fits Γ0 (.ptr tHTh20) W) (hT : ∃ x ∈ Γ0, x.base = T ∧ x.ty = tE) :
    Inv.CostP σ guestCtx (fun t => t = u0)
      (.seq (.ite (.cmp .equal (lv (nm "vz")) (cw 0))
          (callD (nm "htab_set") [lv (nm "written"), lLoad "msg" 32, cw 1]) .skip)
        (.decCall (nm "set_for") .one (nm "htab_new") [cw 20, cw 8]
          (.dec (nm "auths") .one (lLoad "te" 144)
            (.dec (nm "n") .one (lLoad "te" 152) (.dec (nm "i") .one (cw 0) sdLoop)))))
      (tableSetPrice + (1 + 12 + authorizationLoopPrice)) := by
  have hmsg : u0.locals.lookup (nm "msg") = some (.val (.word mg)) := la_lookup hl rfl
  have hwr : u0.locals.lookup (nm "written") = some (.val (.word W)) := la_lookup hl rfl
  have branchCost : Cost σ guestCtx
      (.ite (.cmp .equal (lv (nm "vz")) (cw 0))
        (callD (nm "htab_set") [lv (nm "written"), lLoad "msg" 32, cw 1]) .skip) tableSetPrice := by
    simpa only [Nat.max_zero] using cost_ite (tableSet_cost (σ := σ) _) (cost_skip (σ := σ) (X := guestCtx))
  refine costP_seq_of_plp branchCost (L := fun L => LA L [(nm "vz", .val (.word vzv)), (nm "written", .val (.word W)),
      (nm "benv", .val (.word Bv)), (nm "te", .val (.word T)), (nm "msg", .val (.word mg))])
    (plp_ite (plp_ps hl (hoareG_kp_call hfs hs_kp hs_fp rfl hu ?_ (fun _ _ _ _ _ _ h => h)))
      (plp_skip hu hl)) fun u2 hk2 hl2 => ?_
  · intro vs hvs Γ1 p1 hr hp hG hL hE
    rw [evs_lv_ll_cw hwr hmsg hvs]
    exact ⟨argsOK_set (fits_ext hr.2.2.2.1 hW) (msgbuf hfs hu hp hE (off := 32) (by simp [msgXOffs])),
      fun _ => trivial⟩
  · exact authorizationSetFor_cost hTE hRA hSC hfs hk2 (la_drop hl2 rfl) hW hT

/-- Stage `var vz = u256_is_zero(te[TE_VALUE]); …`. -/
theorem authorizationS2_cost {tE : Nat} (hTE : TeHook σ tE) (hRA : RaH σ) (hSC : SetCodeH σ)
    (hfs : fs = (e, c) :: rest) {u0 : State σ}
    (hu : KP HJ gwJ Γ0 s0 p0 fs e mg u0) {W T Bv : BitVec 64}
    (hl : LA u0.locals [(nm "written", .val (.word W)),
      (nm "benv", .val (.word Bv)), (nm "te", .val (.word T)), (nm "msg", .val (.word mg))])
    (hW : Fits Γ0 (.ptr tHTh20) W) (hT : ∃ x ∈ Γ0, x.base = T ∧ x.ty = tE) :
    Inv.CostP σ guestCtx (fun t => t = u0)
      (.decCall (nm "vz") .one (nm "u256_is_zero")
        [.load (.comb [.one, .one, .one, .one]) (.op .add [lv (nm "te"), cw 16])]
        (.seq (.ite (.cmp .equal (lv (nm "vz")) (cw 0))
            (callD (nm "htab_set") [lv (nm "written"), lLoad "msg" 32, cw 1]) .skip)
          (.decCall (nm "set_for") .one (nm "htab_new") [cw 20, cw 8]
            (.dec (nm "auths") .one (lLoad "te" 144)
              (.dec (nm "n") .one (lLoad "te" 152) (.dec (nm "i") .one (cw 0) sdLoop))))))
      (1 + 0 + (tableSetPrice + (1 + 12 + authorizationLoopPrice))) := by
  have hH := (Hooks.frameCfg_guestHooksR (σ := σ)).hooks
  have g := sgOK0 (sg := (⟨[.any], [], [], false⟩ : Sig)) (gw := gwJ) rfl
  have hprice : CalleeCost σ guestCtx (nm "u256_is_zero") 0 :=
    calleeCost_of_tbl (Shards.finalState_sound_guest (σ := σ)).1 (by rfl)
  refine costP_kpDecCallT (Hooks.frameCfg_guestHooksR (σ := σ)) hfs uz_kp uz_fp
    g.1 g.2.1 g.2.2 (ks := []) (by simp) hu
    (hargs_any (by simp) rfl hu) (fun _ _ _ _ _ _ h => h) (Or.inl rfl) hprice ?_
  intro vs callee hvs v st hst hsh
  have hst := kp_of_kpd hst
  have hu1 := kp_locals hH hst (setVarHOLFinite (nm "vz") v { st with locals := u0.locals }).locals
  have hl1 := la_set (s := st) hl (nm "vz") v
  obtain ⟨vzv, rfl⟩ := val_of_shapeEq_one' hsh
  exact authorizationS3_cost hTE hRA hSC hfs hu1 hl1 hW hT

/-- Stage `htab_set(written, te[TE_ORIGIN], 1); …`. -/
theorem authorizationS1_cost {tE : Nat} (hTE : TeHook σ tE) (hRA : RaH σ) (hSC : SetCodeH σ)
    (hfs : fs = (e, c) :: rest) {u0 : State σ}
    (hu : KP HJ gwJ Γ0 s0 p0 fs e mg u0) {W T Bv : BitVec 64}
    (hl : LA u0.locals [(nm "written", .val (.word W)),
      (nm "benv", .val (.word Bv)), (nm "te", .val (.word T)), (nm "msg", .val (.word mg))])
    (hW : Fits Γ0 (.ptr tHTh20) W) (hT : ∃ x ∈ Γ0, x.base = T ∧ x.ty = tE) :
    Inv.CostP σ guestCtx (fun t => t = u0)
      (.seq (callD (nm "htab_set") [lv (nm "written"), lLoad "te" 0, cw 1])
        (.decCall (nm "vz") .one (nm "u256_is_zero")
          [.load (.comb [.one, .one, .one, .one]) (.op .add [lv (nm "te"), cw 16])]
          (.seq (.ite (.cmp .equal (lv (nm "vz")) (cw 0))
              (callD (nm "htab_set") [lv (nm "written"), lLoad "msg" 32, cw 1]) .skip)
            (.decCall (nm "set_for") .one (nm "htab_new") [cw 20, cw 8]
              (.dec (nm "auths") .one (lLoad "te" 144)
                (.dec (nm "n") .one (lLoad "te" 152) (.dec (nm "i") .one (cw 0) sdLoop)))))))
      (tableSetPrice + (1 + 0 + (tableSetPrice + (1 + 12 + authorizationLoopPrice)))) := by
  have hte : u0.locals.lookup (nm "te") = some (.val (.word T)) := la_lookup hl rfl
  have hwr : u0.locals.lookup (nm "written") = some (.val (.word W)) := la_lookup hl rfl
  have hCall : HoareG σ guestCtx (fun t => t = u0)
      (callD (nm "htab_set") [lv (nm "written"), lLoad "te" 0, cw 1])
      (PS (KP HJ gwJ Γ0 s0 p0 fs e mg) u0.locals) := by
    refine hoareG_kp_call hfs hs_kp hs_fp rfl hu ?_ (fun _ _ _ _ _ _ h => h)
    intro vs hvs Γ1 p1 hr hp hG hL hE
    rw [evs_lv_ll_cw hwr hte hvs]
    obtain ⟨x, hx, hxb, hxt⟩ := hT
    obtain ⟨x', hx', hb', ht', -⟩ := hrun_ext hr hx
    obtain ⟨hbuf, -⟩ := hTE.wf Γ1 u0 p1 hG hp x' hx' (ht'.trans hxt)
    refine ⟨argsOK_set (fits_ext hr.2.2.2.1 hW) ?_, fun _ => trivial⟩
    rw [fld_zero_eq, ← hxb, ← hb']; exact hbuf
  refine costP_seq_of_plp (tableSet_cost _) (K := KP HJ gwJ Γ0 s0 p0 fs e mg)
    (L := Eq u0.locals)
    (fun s hctx hp hgood => plp_of_ps rfl (hCall s hctx hp hgood)) ?_
  intro u1 hk1 hl1
  have hl1' : LA u1.locals [(nm "written", .val (.word W)),
      (nm "benv", .val (.word Bv)), (nm "te", .val (.word T)), (nm "msg", .val (.word mg))] := by
    rw [← hl1]
    exact hl
  exact authorizationS2_cost hTE hRA hSC hfs hk1 hl1' hW hT


end

#print axioms authorizationS1_cost

end InitECandidate.Solver.MemSafe.D0
