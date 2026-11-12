import InitECandidate.Solver.MemSafe.D0.Sd10

/-!
# `set_delegation`: the stages before the loop (part 2: `set_for`, `vz`, `written`, `te`, `msg`)
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

theorem evs_cw2 {u : State σ} {a b : Nat} {vs : List (ValueHOL 64)} (h : evs u [cw a, cw b] = some vs) :
    vs = [.val (.word (BitVec.ofNat 64 a)), .val (.word (BitVec.ofNat 64 b))] := by
  obtain ⟨p, vs1, rfl, hp, h1⟩ := evs_cons_inv h
  obtain ⟨q, vs2, rfl, hq, h2⟩ := evs_cons_inv h1
  rw [evs_zero h2]
  rw [ev_cw] at hp hq
  rw [← Option.some.inj hp, ← Option.some.inj hq]

theorem argsOK_new {Γ : Gam} {p : Ptrs} :
    ArgsOK guestC Γ p (Shards.newSig (20, 8)).params
      [.val (.word (BitVec.ofNat 64 20)), .val (.word (BitVec.ofNat 64 8))] := by
  refine ⟨rfl, fun i pt w hpt hw => ?_⟩
  rcases i with _ | _ | i
  · simp only [Shards.newSig, List.getElem?_cons_zero, Option.some.injEq] at hpt hw
    subst hpt hw; rfl
  · simp only [Shards.newSig, List.getElem?_cons_succ, List.getElem?_cons_zero, Option.some.injEq] at hpt hw
    subst hpt hw; rfl
  · simp [Shards.newSig] at hpt

theorem evs_lv_ll_cw {u : State σ} {x : MlS} {y : String} {a b : BitVec 64} {k n : Nat}
    (hx : u.locals.lookup x = some (.val (.word a))) (hy : u.locals.lookup (nm y) = some (.val (.word b)))
    {vs : List (ValueHOL 64)} (h : evs u [lv x, lLoad y k, cw n] = some vs) :
    vs = [.val (.word a), .val (.word (fld u.memory b k)), .val (.word (BitVec.ofNat 64 n))] := by
  obtain ⟨p, vs1, rfl, hp, h1⟩ := evs_cons_inv h
  obtain ⟨q, vs2, rfl, hq, h2⟩ := evs_cons_inv h1
  obtain ⟨r, vs3, rfl, hr, h3⟩ := evs_cons_inv h2
  rw [evs_zero h3]
  rw [ev_lv, hx] at hp
  rw [ev_cw] at hr
  rw [← Option.some.inj hp, ev_lLoad_eq hy hq, ← Option.some.inj hr]

section
local notation "HJ" => (Hooks.guestHooksR (σ := σ))
local notation "gwJ" => [Hooks.gJn]
variable {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {fs : List Frame}
  {e c : BitVec 64} {rest : List Frame} {mg : BitVec 64}

theorem plp_decT (hfs : fs = (e, c) :: rest)
    {f : MlS} {args : List (ExpHOL 64)} {sg : Sig}
    {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
    {PW : List (ValueHOL 64) → State σ → Gam → BitVec 64 → Prop}
    {Q : List (ValueHOL 64) → State σ → Gam → PanSemResultExact 64 → State σ → Gam → Prop}
    (hspec : SumSpecA σ guestCtx guestC HJ f sg Pre PW Q) (hfp : KeepsFp σ guestCtx f)
    (hsub : ∀ g, g ∈ sg.gw → g ∈ gwJ) (hgwE : nmEv ∉ sg.gw ∧ nmCC ∉ sg.gw) (hgJ : JrOut sg.gw)
    {u0 : State σ} (hu : KP HJ gwJ Γ0 s0 p0 fs e mg u0) {Pl : Locs → Prop}
    (hargs : ∀ vs, evs u0 args = some vs → ∀ Γ1 p1, RunT guestC HJ gwJ Γ0 s0 Γ1 u0 p0 p1 →
      ptrsOf u0 = some p1 → G guestC HJ Γ1 u0 →
      ChainL guestC tEV tCK Γ1 u0 fs → ChainE GP GR Γ1 u0 fs →
      ArgsOK guestC Γ1 p1 sg.params vs ∧ ∀ callee, Pre vs (callEntryStateHOLFinite u0 callee) Γ1)
    (hpw : ∀ vs callee Γ1 a, G guestC HJ Γ1 u0 → ProtCell guestC Γ1 a →
      PW vs (callEntryStateHOLFinite u0 callee) Γ1 a →
      PWtopM tEV tCK [] vs (callEntryStateHOLFinite u0 callee) Γ1 a)
    {rn : MlS} {sh : ShapeHOL} {k : ProgHOL 64}
    (hres : ∀ L o, Pl L → Pl (L.resVarEq (rn, o)))
    (hk : ∀ vs callee, evs u0 args = some vs → ∀ v (st : State σ),
      KPd HJ gwJ Γ0 s0 p0 fs e mg st (fun Γ2 p2 => ∃ Γ1,
        Q vs (callEntryStateHOLFinite u0 callee) Γ1 (.returned v) st Γ2 ∧ ptrsOf st = some p2) →
      shapeEqHOL (shapeOfHOLExact v) sh = true →
      HoareG σ guestCtx (fun t => t = setVarHOLFinite rn v { st with locals := u0.locals }) k
        (PLP (KP HJ gwJ Γ0 s0 p0 fs e mg) Pl)) :
    HoareG σ guestCtx (fun t => t = u0) (.decCall rn sh f args k)
      (PLP (KP HJ gwJ Γ0 s0 p0 fs e mg) Pl) := by
  have hH := (Hooks.frameCfg_guestHooksR (σ := σ)).hooks
  refine hoareG_kpDecCallT (Hooks.frameCfg_guestHooksR (σ := σ)) hfs hspec hfp hsub hgwE hgJ
    (ks := []) (by simp) hu hargs hpw (Or.inl rfl) ?_ (fun ro t hro h => Or.inr ⟨hro, h⟩)
  intro vs callee hvs v st hst hsh
  exact hoareG_conseq (hk vs callee hvs v st hst hsh) (fun _ _ h => h)
    (fun _ _ _ _ h => plp_res (kp_locF hH) rn hres _ h)

/-- Stage `var set_for = htab_new(20, 8); …`. -/
theorem sd_s4 {tE : Nat} (hTE : TeHook σ tE) (hRA : RaH σ) (hSC : SetCodeH σ)
    (hfs : fs = (e, c) :: rest) {u0 : State σ}
    (hu : KP HJ gwJ Γ0 s0 p0 fs e mg u0) (hG0 : G guestC HJ Γ0 s0) {W T Bv : BitVec 64}
    (hl : LA u0.locals [(nm "written", .val (.word W)),
      (nm "benv", .val (.word Bv)), (nm "te", .val (.word T)), (nm "msg", .val (.word mg))])
    (hW : Fits Γ0 (.ptr tHTh20) W) (hT : ∃ x ∈ Γ0, x.base = T ∧ x.ty = tE) :
    HoareG σ guestCtx (fun t => t = u0)
      (.decCall (nm "set_for") .one (nm "htab_new") [cw 20, cw 8]
        (.dec (nm "auths") .one (lLoad "te" 144)
          (.dec (nm "n") .one (lLoad "te" 152) (.dec (nm "i") .one (cw 0) sdLoop))))
      (PLP (KP HJ gwJ Γ0 s0 p0 fs e mg) (fun _ => True)) := by
  have hH := (Hooks.frameCfg_guestHooksR (σ := σ)).hooks
  have g := sgOK0 (sg := Shards.newSig (20, 8)) (gw := gwJ) rfl
  refine plp_decT hfs hn_kp hn_fp g.1 g.2.1 g.2.2 hu ?_ (fun _ _ _ _ _ _ h => h)
    (fun _ _ _ => trivial) ?_
  · intro vs hvs Γ1 p1 hr hp hG hL hE
    rw [evs_cw2 hvs]
    exact ⟨argsOK_new, fun _ => jrNZ_congr rfl hu.1⟩
  · intro vs callee hvs v st hst hsh
    obtain ⟨S, rfl⟩ := val_of_shapeEq_one' hsh
    have hst' := hst
    obtain ⟨hJ, Γ2, p2, hrun, hch, hE, hΦ, h112, Γ1', hQ, hp2⟩ := hst
    have hG2 := hrun.2.2.2.2.2.1
    have hFS : Fits Γ2 (.ptr tHTh20) S := hQ S rfl
    have hu2 : KP HJ gwJ Γ2 st p2 fs e mg st :=
      ⟨hJ, Γ2, p2, runT_refl hG2 hrun.2.1, hch, hE, le_refl _, h112⟩
    have hu2s := kp_locals hH hu2 (setVarHOLFinite (nm "set_for") (.val (.word S))
      { st with locals := u0.locals }).locals
    have hl2 := la_set (s := st) hl (nm "set_for") (.val (.word S))
    obtain ⟨x, hx, hxb, hxt⟩ := hT
    obtain ⟨x', hx', hb', ht', -⟩ := hrun.2.2.2.1 x hx
    refine hoareG_conseq (P := fun t => t = setVarHOLFinite (nm "set_for") (.val (.word S))
        { st with locals := u0.locals })
      (Q := PLP (KP HJ gwJ Γ2 st p2 fs e mg) (fun _ => True)) ?_ (fun _ _ h => h)
      (fun ro t _ _ h => plp_mono (fun t ht => kp_trans (kp_of_kpd hst') hrun ht) (fun _ h => h) h)
    exact sd_s5 hTE hRA hSC hfs hu2s hG2 hl2 (fits_ext hrun.2.2.2.1 hW) hFS
      ⟨x', hx', hb'.trans hxb, ht'.trans hxt⟩

theorem hrun_ext {Γ0 Γ1 : Gam} {gw : List MlS} {s0 u : State σ} {p0 p1 : Ptrs}
    (hr : RunT guestC (Hooks.guestHooksR (σ := σ)) gw Γ0 s0 Γ1 u p0 p1) {x : Obj} (hx : x ∈ Γ0) :
    ∃ x' ∈ Γ1, x'.base = x.base ∧ x'.ty = x.ty ∧ x.size ≤ x'.size := hr.2.2.2.1 x hx

theorem fld_zero_eq (m : Mem) (T : BitVec 64) : fld m T 0 = rd m T := by simp [fld]

/-- Stage `if vz == 0 { htab_set(written, msg[32], 1); } var set_for = …`. -/
theorem sd_s3 {tE : Nat} (hTE : TeHook σ tE) (hRA : RaH σ) (hSC : SetCodeH σ)
    (hfs : fs = (e, c) :: rest) {u0 : State σ}
    (hu : KP HJ gwJ Γ0 s0 p0 fs e mg u0) (hG0 : G guestC HJ Γ0 s0) {W T Bv vzv : BitVec 64}
    (hl : LA u0.locals [(nm "vz", .val (.word vzv)), (nm "written", .val (.word W)),
      (nm "benv", .val (.word Bv)), (nm "te", .val (.word T)), (nm "msg", .val (.word mg))])
    (hW : Fits Γ0 (.ptr tHTh20) W) (hT : ∃ x ∈ Γ0, x.base = T ∧ x.ty = tE) :
    HoareG σ guestCtx (fun t => t = u0)
      (.seq (.ite (.cmp .equal (lv (nm "vz")) (cw 0))
          (callD (nm "htab_set") [lv (nm "written"), lLoad "msg" 32, cw 1]) .skip)
        (.decCall (nm "set_for") .one (nm "htab_new") [cw 20, cw 8]
          (.dec (nm "auths") .one (lLoad "te" 144)
            (.dec (nm "n") .one (lLoad "te" 152) (.dec (nm "i") .one (cw 0) sdLoop)))))
      (PLP (KP HJ gwJ Γ0 s0 p0 fs e mg) (fun _ => True)) := by
  have hmsg : u0.locals.lookup (nm "msg") = some (.val (.word mg)) := la_lookup hl rfl
  have hwr : u0.locals.lookup (nm "written") = some (.val (.word W)) := la_lookup hl rfl
  refine plp_seq (Pl := fun L => LA L [(nm "vz", .val (.word vzv)), (nm "written", .val (.word W)),
      (nm "benv", .val (.word Bv)), (nm "te", .val (.word T)), (nm "msg", .val (.word mg))])
    (plp_ite (plp_ps hl (hoareG_kp_call hfs hs_kp hs_fp rfl hu ?_ (fun _ _ _ _ _ _ h => h)))
      (plp_skip hu hl)) fun u2 hk2 hl2 => ?_
  · intro vs hvs Γ1 p1 hr hp hG hL hE
    rw [evs_lv_ll_cw hwr hmsg hvs]
    exact ⟨argsOK_set (fits_ext hr.2.2.2.1 hW) (msgbuf hfs hu hp hE (off := 32) (by simp [msgXOffs])),
      fun _ => trivial⟩
  · exact sd_s4 hTE hRA hSC hfs hk2 hG0 (la_drop hl2 rfl) hW hT

/-- Stage `var vz = u256_is_zero(te[TE_VALUE]); …`. -/
theorem sd_s2 {tE : Nat} (hTE : TeHook σ tE) (hRA : RaH σ) (hSC : SetCodeH σ)
    (hfs : fs = (e, c) :: rest) {u0 : State σ}
    (hu : KP HJ gwJ Γ0 s0 p0 fs e mg u0) (hG0 : G guestC HJ Γ0 s0) {W T Bv : BitVec 64}
    (hl : LA u0.locals [(nm "written", .val (.word W)),
      (nm "benv", .val (.word Bv)), (nm "te", .val (.word T)), (nm "msg", .val (.word mg))])
    (hW : Fits Γ0 (.ptr tHTh20) W) (hT : ∃ x ∈ Γ0, x.base = T ∧ x.ty = tE) :
    HoareG σ guestCtx (fun t => t = u0)
      (.decCall (nm "vz") .one (nm "u256_is_zero")
        [.load (.comb [.one, .one, .one, .one]) (.op .add [lv (nm "te"), cw 16])]
        (.seq (.ite (.cmp .equal (lv (nm "vz")) (cw 0))
            (callD (nm "htab_set") [lv (nm "written"), lLoad "msg" 32, cw 1]) .skip)
          (.decCall (nm "set_for") .one (nm "htab_new") [cw 20, cw 8]
            (.dec (nm "auths") .one (lLoad "te" 144)
              (.dec (nm "n") .one (lLoad "te" 152) (.dec (nm "i") .one (cw 0) sdLoop))))))
      (PLP (KP HJ gwJ Γ0 s0 p0 fs e mg) (fun _ => True)) := by
  have hH := (Hooks.frameCfg_guestHooksR (σ := σ)).hooks
  refine plp_dec hfs uz_kp uz_fp rfl hu (Pl := fun _ => True)
    (hargs_any (by simp) rfl hu) (fun _ _ _ _ _ _ h => h) (fun _ _ _ => trivial) ?_
  intro v st hst _ hsh
  have hu1 := kp_locals hH hst (setVarHOLFinite (nm "vz") v { st with locals := u0.locals }).locals
  have hl1 := la_set (s := st) hl (nm "vz") v
  obtain ⟨vzv, rfl⟩ := val_of_shapeEq_one' hsh
  exact sd_s3 hTE hRA hSC hfs hu1 hG0 hl1 hW hT

/-- Stage `htab_set(written, te[TE_ORIGIN], 1); …`. -/
theorem sd_s1 {tE : Nat} (hTE : TeHook σ tE) (hRA : RaH σ) (hSC : SetCodeH σ)
    (hfs : fs = (e, c) :: rest) {u0 : State σ}
    (hu : KP HJ gwJ Γ0 s0 p0 fs e mg u0) (hG0 : G guestC HJ Γ0 s0) {W T Bv : BitVec 64}
    (hl : LA u0.locals [(nm "written", .val (.word W)),
      (nm "benv", .val (.word Bv)), (nm "te", .val (.word T)), (nm "msg", .val (.word mg))])
    (hW : Fits Γ0 (.ptr tHTh20) W) (hT : ∃ x ∈ Γ0, x.base = T ∧ x.ty = tE) :
    HoareG σ guestCtx (fun t => t = u0)
      (.seq (callD (nm "htab_set") [lv (nm "written"), lLoad "te" 0, cw 1])
        (.decCall (nm "vz") .one (nm "u256_is_zero")
          [.load (.comb [.one, .one, .one, .one]) (.op .add [lv (nm "te"), cw 16])]
          (.seq (.ite (.cmp .equal (lv (nm "vz")) (cw 0))
              (callD (nm "htab_set") [lv (nm "written"), lLoad "msg" 32, cw 1]) .skip)
            (.decCall (nm "set_for") .one (nm "htab_new") [cw 20, cw 8]
              (.dec (nm "auths") .one (lLoad "te" 144)
                (.dec (nm "n") .one (lLoad "te" 152) (.dec (nm "i") .one (cw 0) sdLoop)))))))
      (PLP (KP HJ gwJ Γ0 s0 p0 fs e mg) (fun _ => True)) := by
  have hte : u0.locals.lookup (nm "te") = some (.val (.word T)) := la_lookup hl rfl
  have hwr : u0.locals.lookup (nm "written") = some (.val (.word W)) := la_lookup hl rfl
  refine plp_seq_ps (Pl := fun _ => True) (Pl' := fun _ => True) trivial
    (hoareG_kp_call hfs hs_kp hs_fp rfl hu ?_ (fun _ _ _ _ _ _ h => h)) fun u1 hk1 hl1 => ?_
  · intro vs hvs Γ1 p1 hr hp hG hL hE
    rw [evs_lv_ll_cw hwr hte hvs]
    obtain ⟨x, hx, hxb, hxt⟩ := hT
    obtain ⟨x', hx', hb', ht', -⟩ := hrun_ext hr hx
    obtain ⟨hbuf, -⟩ := hTE.wf Γ1 u0 p1 hG hp x' hx' (ht'.trans hxt)
    refine ⟨argsOK_set (fits_ext hr.2.2.2.1 hW) ?_, fun _ => trivial⟩
    rw [fld_zero_eq, ← hxb, ← hb']; exact hbuf
  · have hl1' : LA u1.locals [(nm "written", .val (.word W)),
        (nm "benv", .val (.word Bv)), (nm "te", .val (.word T)), (nm "msg", .val (.word mg))] := by
      rw [hl1]; exact hl
    exact sd_s2 hTE hRA hSC hfs hk1 hG0 hl1' hW hT

/-- Stage `var written = htab_new(20, 8); …`. -/
theorem sd_s0 {tE : Nat} (hTE : TeHook σ tE) (hRA : RaH σ) (hSC : SetCodeH σ)
    (hfs : fs = (e, c) :: rest) {u0 : State σ}
    (hu : KP HJ gwJ Γ0 s0 p0 fs e mg u0) (hG0 : G guestC HJ Γ0 s0) {T Bv : BitVec 64}
    (hl : LA u0.locals [(nm "benv", .val (.word Bv)), (nm "te", .val (.word T)),
      (nm "msg", .val (.word mg))])
    (hT : ∃ x ∈ Γ0, x.base = T ∧ x.ty = tE) :
    HoareG σ guestCtx (fun t => t = u0)
      (.decCall (nm "written") .one (nm "htab_new") [cw 20, cw 8]
        (.seq (callD (nm "htab_set") [lv (nm "written"), lLoad "te" 0, cw 1])
          (.decCall (nm "vz") .one (nm "u256_is_zero")
            [.load (.comb [.one, .one, .one, .one]) (.op .add [lv (nm "te"), cw 16])]
            (.seq (.ite (.cmp .equal (lv (nm "vz")) (cw 0))
                (callD (nm "htab_set") [lv (nm "written"), lLoad "msg" 32, cw 1]) .skip)
              (.decCall (nm "set_for") .one (nm "htab_new") [cw 20, cw 8]
                (.dec (nm "auths") .one (lLoad "te" 144)
                  (.dec (nm "n") .one (lLoad "te" 152) (.dec (nm "i") .one (cw 0) sdLoop))))))))
      (PLP (KP HJ gwJ Γ0 s0 p0 fs e mg) (fun _ => True)) := by
  have hH := (Hooks.frameCfg_guestHooksR (σ := σ)).hooks
  have g := sgOK0 (sg := Shards.newSig (20, 8)) (gw := gwJ) rfl
  refine plp_decT hfs hn_kp hn_fp g.1 g.2.1 g.2.2 hu ?_ (fun _ _ _ _ _ _ h => h)
    (fun _ _ _ => trivial) ?_
  · intro vs hvs Γ1 p1 hr hp hG hL hE
    rw [evs_cw2 hvs]
    exact ⟨argsOK_new, fun _ => jrNZ_congr rfl hu.1⟩
  · intro vs callee hvs v st hst hsh
    obtain ⟨W, rfl⟩ := val_of_shapeEq_one' hsh
    have hst' := hst
    obtain ⟨hJ, Γ2, p2, hrun, hch, hE, hΦ, h112, Γ1', hQ, hp2⟩ := hst
    have hG2 := hrun.2.2.2.2.2.1
    have hFW : Fits Γ2 (.ptr tHTh20) W := hQ W rfl
    have hu2 : KP HJ gwJ Γ2 st p2 fs e mg st :=
      ⟨hJ, Γ2, p2, runT_refl hG2 hrun.2.1, hch, hE, le_refl _, h112⟩
    have hu2s := kp_locals hH hu2 (setVarHOLFinite (nm "written") (.val (.word W))
      { st with locals := u0.locals }).locals
    have hl2 := la_set (s := st) hl (nm "written") (.val (.word W))
    obtain ⟨x, hx, hxb, hxt⟩ := hT
    obtain ⟨x', hx', hb', ht', -⟩ := hrun.2.2.2.1 x hx
    refine hoareG_conseq (P := fun t => t = setVarHOLFinite (nm "written") (.val (.word W))
        { st with locals := u0.locals })
      (Q := PLP (KP HJ gwJ Γ2 st p2 fs e mg) (fun _ => True)) ?_ (fun _ _ h => h)
      (fun ro t _ _ h => plp_mono (fun t ht => kp_trans (kp_of_kpd hst') hrun ht) (fun _ h => h) h)
    exact sd_s1 hTE hRA hSC hfs hu2s hG2 hl2 hFW ⟨x', hx', hb'.trans hxb, ht'.trans hxt⟩

/-- Stage `var te = msg[MSG_TE]; var benv = msg[MSG_BE]; …`. -/
theorem sd_s00 {tE : Nat} (hTE : TeHook σ tE) (hRA : RaH σ) (hSC : SetCodeH σ)
    (hfs : fs = (e, c) :: rest) {u0 : State σ}
    (hu : KP HJ gwJ Γ0 s0 p0 fs e mg u0)
    (hl : LA u0.locals [(nm "msg", .val (.word mg))]) :
    HoareG σ guestCtx (fun t => t = u0)
      (.dec (nm "te") .one (lLoad "msg" 8)
        (.dec (nm "benv") .one (lLoad "msg" 0)
          (.decCall (nm "written") .one (nm "htab_new") [cw 20, cw 8]
            (.seq (callD (nm "htab_set") [lv (nm "written"), lLoad "te" 0, cw 1])
              (.decCall (nm "vz") .one (nm "u256_is_zero")
                [.load (.comb [.one, .one, .one, .one]) (.op .add [lv (nm "te"), cw 16])]
                (.seq (.ite (.cmp .equal (lv (nm "vz")) (cw 0))
                    (callD (nm "htab_set") [lv (nm "written"), lLoad "msg" 32, cw 1]) .skip)
                  (.decCall (nm "set_for") .one (nm "htab_new") [cw 20, cw 8]
                    (.dec (nm "auths") .one (lLoad "te" 144)
                      (.dec (nm "n") .one (lLoad "te" 152)
                        (.dec (nm "i") .one (cw 0) sdLoop))))))))))
      (PLP (KP HJ gwJ Γ0 s0 p0 fs e mg) (fun _ => True)) := by
  have hH := (Hooks.frameCfg_guestHooksR (σ := σ)).hooks
  have hu' := hu
  obtain ⟨hJ, Γ1, p1, hrun, hch, hE, hΦ, h112⟩ := hu
  have hG1 := hrun.2.2.2.2.2.1
  have hp1 := hrun.2.1
  have hu1 : KP HJ gwJ Γ1 u0 p1 fs e mg u0 :=
    ⟨hJ, Γ1, p1, runT_refl hG1 hp1, hch, hE, le_refl _, h112⟩
  have hTo := te_obj hTE hfs hu1 hG1 hp1 hE
  have hmsg : u0.locals.lookup (nm "msg") = some (.val (.word mg)) := la_lookup hl rfl
  refine hoareG_conseq (P := fun t => t = u0)
    (Q := PLP (KP HJ gwJ Γ1 u0 p1 fs e mg) (fun _ => True)) ?_ (fun _ _ h => h)
    (fun ro t _ _ h => plp_mono (fun t ht => kp_trans hu' hrun ht) (fun _ h => h) h)
  refine plp_decv (fun _ _ _ => trivial) fun v hv _ => ?_
  have hvT := ev_lLoad_eq hmsg hv
  subst hvT
  set T := fld u0.memory mg 8 with hTd
  have hu2 := kp_locals hH hu1 (setVarHOLFinite (nm "te") (.val (.word T)) u0).locals
  have hl2 := la_set (s := u0) hl (nm "te") (.val (.word T))
  set u2 := setVarHOLFinite (nm "te") (.val (.word T)) u0 with hu2d
  have hmsg2 : u2.locals.lookup (nm "msg") = some (.val (.word mg)) := la_lookup hl2 rfl
  refine plp_decv (fun _ _ _ => trivial) fun v hv _ => ?_
  have hvB := ev_lLoad_eq hmsg2 hv
  subst hvB
  set Bv := fld u2.memory mg 0 with hBd
  have hu3 := kp_locals hH hu2 (setVarHOLFinite (nm "benv") (.val (.word Bv)) u2).locals
  have hl3 := la_set (s := u2) hl2 (nm "benv") (.val (.word Bv))
  exact sd_s0 hTE hRA hSC hfs hu3 hG1 hl3 hTo

end


end InitECandidate.Solver.MemSafe.D0
#print axioms InitECandidate.Solver.MemSafe.D0.sd_s4
