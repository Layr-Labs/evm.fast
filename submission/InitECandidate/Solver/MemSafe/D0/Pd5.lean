import InitECandidate.Solver.MemSafe.D0.Pd4
import InitECandidate.Solver.MemSafe.D0.Alloc24

/-!
# `prepare_dispatch`: the delegation branch after `alloc(24)`

`pd_da1`: `memcpy(daddr, da, 20); var warm = …; …; st msg + 168, 1; st msg + 104, daddr`, from a
`KP` state whose base carries `BufOK daddr 20`.
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

/-- Locals in the delegation branch. -/
def DaL (mg Q DA C N : BitVec 64) (L : Locs) : Prop :=
  L.lookup (nm "msg") = some (.val (.word mg)) ∧ L.lookup (nm "daddr") = some (.val (.word Q)) ∧
    L.lookup (nm "da") = some (.val (.word DA)) ∧ L.lookup (nm "code") = some (.val (.word C)) ∧
    L.lookup (nm "code_n") = some (.val (.word N))

/-- The post of the delegation branch: `code` / `code_n` hold a bounded length. -/
def TailE (mg : BitVec 64) (L : Locs) : Prop :=
  ∃ C N : BitVec 64, TailL mg C N L ∧ N.toNat + 63 < 2 ^ 64

theorem daL_res {mg Q DA C N : BitVec 64} {n : MlS} (L : Locs) (o : Option (ValueHOL 64))
    (h1 : nm "msg" ≠ n) (h2 : nm "daddr" ≠ n) (h3 : nm "da" ≠ n) (h4 : nm "code" ≠ n)
    (h5 : nm "code_n" ≠ n) (h : DaL mg Q DA C N L) : DaL mg Q DA C N (L.resVarEq (n, o)) := by
  obtain ⟨a, b, c, d, e⟩ := h
  refine ⟨?_, ?_, ?_, ?_, ?_⟩
  · rw [lookup_resVarEq_ne _ _ h1.symm]; exact a
  · rw [lookup_resVarEq_ne _ _ h2.symm]; exact b
  · rw [lookup_resVarEq_ne _ _ h3.symm]; exact c
  · rw [lookup_resVarEq_ne _ _ h4.symm]; exact d
  · rw [lookup_resVarEq_ne _ _ h5.symm]; exact e

theorem tailE_res {mg : BitVec 64} {n : MlS} (L : Locs) (o : Option (ValueHOL 64))
    (h1 : nm "msg" ≠ n) (h4 : nm "code" ≠ n) (h5 : nm "code_n" ≠ n) (h : TailE mg L) :
    TailE mg (L.resVarEq (n, o)) := by
  obtain ⟨C, N, ⟨a, b, c⟩, hb⟩ := h
  refine ⟨C, N, ⟨?_, ?_, ?_⟩, hb⟩
  · rw [lookup_resVarEq_ne _ _ h1.symm]; exact a
  · rw [lookup_resVarEq_ne _ _ h4.symm]; exact b
  · rw [lookup_resVarEq_ne _ _ h5.symm]; exact c

theorem evs_lv2cw {u : State σ} {x y : MlS} {a b : BitVec 64} {n : Nat}
    (hx : u.locals.lookup x = some (.val (.word a))) (hy : u.locals.lookup y = some (.val (.word b)))
    {vs : List (ValueHOL 64)} (h : evs u [lv x, lv y, cw n] = some vs) :
    vs = [.val (.word a), .val (.word b), .val (.word (BitVec.ofNat 64 n))] := by
  obtain ⟨p, vs1, rfl, hp, h1⟩ := evs_cons_inv h
  obtain ⟨q, vs2, rfl, hq, h2⟩ := evs_cons_inv h1
  obtain ⟨r, vs3, rfl, hr, h3⟩ := evs_cons_inv h2
  rw [evs_zero h3]
  rw [ev_lv, hx] at hp; rw [ev_lv, hy] at hq; rw [ev_cw] at hr
  rw [← Option.some.inj hp, ← Option.some.inj hq, ← Option.some.inj hr]

theorem plp_assign {gw : List MlS} {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {fs : List Frame}
    {e mg : BitVec 64} {Pl : Locs → Prop} {u0 : State σ} {n : MlS} {x : ExpHOL 64}
    (hu : KP (Hooks.guestHooksR (σ := σ)) gw Γ0 s0 p0 fs e mg u0)
    (hP : ∀ v, ev u0 x = some v → Pl (setVarHOLFinite n v u0).locals) :
    HoareG σ guestCtx (fun t => t = u0) (.assign .local n x)
      (PLP (KP (Hooks.guestHooksR (σ := σ)) gw Γ0 s0 p0 fs e mg) Pl) := by
  refine hoareG_assignK fun s _ hs v hv _ => ?_
  subst s
  exact Or.inl ⟨rfl, kp_locals (Hooks.frameCfg_guestHooksR (σ := σ)).hooks hu _, hP v hv⟩

/-- The last four statements of the delegation branch. -/
def pdDa3 : ProgHOL 64 :=
  .seq (.assign .local (nm "code") (.rfield 0 (lv (nm "dcode"))))
    (.seq (.assign .local (nm "code_n") (.rfield 1 (lv (nm "dcode"))))
      (.seq (stM 168 (cw 1)) (stM 104 (lv (nm "daddr")))))

def pdDa2 : ProgHOL 64 :=
  .decCall (nm "dcode") (.comb [.one, .one]) (nm "ext_code_of") [lv (nm "daddr")] pdDa3

def pdDa1 : ProgHOL 64 :=
  .seq (callD (nm "memcpy") [lv (nm "daddr"), lv (nm "da"), cw 20])
    (.decCall (nm "warm") .one (nm "is_warm_address") [lv (nm "daddr")]
      (.seq (.ite (.cmp .notEqual (lv (nm "warm")) (cw 0)) (callD (nm "charge_gas") [cw 100])
          (.seq (callD (nm "charge_gas") [cw 3000]) (callD (nm "warm_address") [lv (nm "daddr")])))
        pdDa2))

theorem pdDa_eq : pdDa = .decCall (nm "daddr") .one (nm "alloc") [cw 24] pdDa1 := rfl

/-- Locals before the assignments `code = dcode.0; code_n = dcode.1`. -/
def Da3L (mg Q x y : BitVec 64) (L : Locs) : Prop :=
  L.lookup (nm "msg") = some (.val (.word mg)) ∧ L.lookup (nm "daddr") = some (.val (.word Q)) ∧
    L.lookup (nm "dcode") = some (wv [x, y])

section
local notation "HJ" => (Hooks.guestHooksR (σ := σ))
variable {gw : List MlS} {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {fs : List Frame}
  {e c : BitVec 64} {rest : List Frame} {mg : BitVec 64}

theorem pd_da3 (hRec : RecNoMsg σ) (hfs : fs = (e, c) :: rest) {u0 : State σ}
    (hu : KP HJ gw Γ0 s0 p0 fs e mg u0) {Q x y : BitVec 64} (hl : Da3L mg Q x y u0.locals)
    (hNb : y.toNat + 63 < 2 ^ 64) :
    HoareG σ guestCtx (fun t => t = u0) pdDa3 (PLP (KP HJ gw Γ0 s0 p0 fs e mg) (TailE mg)) := by
  obtain ⟨hm, hq, hd⟩ := hl
  unfold pdDa3
  refine plp_seq (Pl := fun L => L.lookup (nm "msg") = some (.val (.word mg)) ∧
      L.lookup (nm "daddr") = some (.val (.word Q)) ∧ L.lookup (nm "dcode") = some (wv [x, y]) ∧
      L.lookup (nm "code") = some (.val (.word x)))
    (plp_assign hu fun v hv => ?_) fun u1 hk1 ⟨hm1, hq1, hd1, hc1⟩ => ?_
  · rw [Struct.ev_wv_word hd (i := 0) (by simp)] at hv
    obtain rfl := (Option.some.inj hv).symm
    refine ⟨?_, ?_, ?_, ?_⟩
    · rw [lk_set_ne _ _ (by decide)]; exact hm
    · rw [lk_set_ne _ _ (by decide)]; exact hq
    · rw [lk_set_ne _ _ (by decide)]; exact hd
    · exact lk_set_self _ _ _
  refine plp_seq (Pl := fun L => L.lookup (nm "msg") = some (.val (.word mg)) ∧
      L.lookup (nm "daddr") = some (.val (.word Q)) ∧ L.lookup (nm "code") = some (.val (.word x)) ∧
      L.lookup (nm "code_n") = some (.val (.word y)))
    (plp_assign hk1 fun v hv => ?_) fun u2 hk2 ⟨hm2, hq2, hc2, hn2⟩ => ?_
  · rw [Struct.ev_wv_word hd1 (i := 1) (by simp)] at hv
    obtain rfl := (Option.some.inj hv).symm
    refine ⟨?_, ?_, ?_, ?_⟩
    · rw [lk_set_ne _ _ (by decide)]; exact hm1
    · rw [lk_set_ne _ _ (by decide)]; exact hq1
    · rw [lk_set_ne _ _ (by decide)]; exact hc1
    · exact lk_set_self _ _ _
  have hx1 : ∀ v, ev u2 (cw 1) = some v → ∃ z, v = .val (.word z) := fun v hv => by
    rw [ev_cw] at hv; exact ⟨_, (Option.some.inj hv).symm⟩
  refine plp_seq_ps (Pl := fun L => L.lookup (nm "msg") = some (.val (.word mg)) ∧
      L.lookup (nm "daddr") = some (.val (.word Q)) ∧ L.lookup (nm "code") = some (.val (.word x)) ∧
      L.lookup (nm "code_n") = some (.val (.word y))) ⟨hm2, hq2, hc2, hn2⟩
    (hoareG_kpStMsg hRec hfs hk2 hm2 (off := 168) (Or.inr (Or.inr (Or.inr (Or.inr rfl)))) hx1)
    fun u3 hk3 hl3 => ?_
  have hm3 : u3.locals.lookup (nm "msg") = some (.val (.word mg)) := by rw [hl3]; exact hm2
  have hq3 : u3.locals.lookup (nm "daddr") = some (.val (.word Q)) := by rw [hl3]; exact hq2
  have hc3 : u3.locals.lookup (nm "code") = some (.val (.word x)) := by rw [hl3]; exact hc2
  have hn3 : u3.locals.lookup (nm "code_n") = some (.val (.word y)) := by rw [hl3]; exact hn2
  exact plp_ps ⟨x, y, ⟨hm3, hc3, hn3⟩, hNb⟩
    (hoareG_kpStMsg hRec hfs hk3 hm3 (off := 104) (Or.inr (Or.inl rfl))
      (fun v hv => hx_lv hq3 hv))

theorem pd_da2 (hRec : RecNoMsg σ) (hfs : fs = (e, c) :: rest) {u0 : State σ}
    (hu : KP HJ gw Γ0 s0 p0 fs e mg u0) (hG0 : G guestC HJ Γ0 s0) {Q DA C N : BitVec 64}
    (hl : DaL mg Q DA C N u0.locals) (hbuf : BufOK guestC Γ0 p0 Q.toNat 20) :
    HoareG σ guestCtx (fun t => t = u0) pdDa2 (PLP (KP HJ gw Γ0 s0 p0 fs e mg) (TailE mg)) := by
  have hH := (Hooks.frameCfg_guestHooksR (σ := σ)).hooks
  obtain ⟨hm, hq, hda, hC, hN⟩ := hl
  unfold pdDa2
  refine plp_dec hfs eco_kp eoc_fp rfl hu ?_ (fun _ _ _ _ _ _ h => h)
    (fun L o hL => tailE_res L o (by decide) (by decide) (by decide) hL) ?_
  · intro vs hvs Γ1 p1 hr hp hG hL hE
    rw [evs_lv1 hq hvs]
    exact ⟨argsOK_buf1 (bufOK_runT hG0 hr hbuf), fun _ => jrNZ_congr rfl hu.1⟩
  · intro v st hst hq' hsh
    obtain ⟨x, y, rfl⟩ := wv2_of hsh
    have hy : y.toNat + 63 < 2 ^ 64 := by
      obtain ⟨vs, callee, Γ1, Γ2, hvs, hQ⟩ := hq'
      exact hQ x y rfl
    refine pd_da3 hRec hfs (kp_locals hH hst _) (Q := Q) (x := x) ?_ hy
    refine ⟨?_, ?_, lk_set_self _ _ _⟩
    · rw [lk_set_ne _ _ (by decide)]; exact hm
    · rw [lk_set_ne _ _ (by decide)]; exact hq

/-- After `memcpy`: `is_warm_address`, the gas charge, `ext_code_of`, the stores. -/
theorem pd_da1 (hRec : RecNoMsg σ) (hfs : fs = (e, c) :: rest) {u0 : State σ}
    (hu : KP HJ gw Γ0 s0 p0 fs e mg u0) (hG0 : G guestC HJ Γ0 s0) {Q DA C N : BitVec 64}
    (hl : DaL mg Q DA C N u0.locals) (hbuf : BufOK guestC Γ0 p0 Q.toNat 20) :
    HoareG σ guestCtx (fun t => t = u0) pdDa1 (PLP (KP HJ gw Γ0 s0 p0 fs e mg) (TailE mg)) := by
  have hH := (Hooks.frameCfg_guestHooksR (σ := σ)).hooks
  unfold pdDa1
  obtain ⟨hm, hq, hda, hC, hN⟩ := hl
  refine plp_seq_ps (Pl := DaL mg Q DA C N) ⟨hm, hq, hda, hC, hN⟩
    (hoareG_kp_call hfs memcpy_sa memcpy_fp rfl hu ?_ (fun _ _ _ _ _ _ h => h.elim)) fun u1 hk1 hl1 => ?_
  · intro vs hvs Γ1 p1 hr hp hG hL hE
    rw [evs_lv2cw hq hda hvs]
    refine ⟨?_, fun _ => trivial⟩
    have hB := bufOK_runT hG0 hr hbuf
    have h20 : (1 * (BitVec.ofNat 64 20).toNat + 0) = 20 := by decide
    refine ⟨rfl, fun i pt w hpt hw => ?_⟩
    rcases i with _ | _ | _ | i <;> simp [Helpers.sigMemcpy] at hpt hw <;> subst hpt <;> subst hw
    · refine ⟨Q, _, rfl, rfl, ?_⟩
      rw [h20]; exact hB
    · trivial
    · trivial
  have hl1' : DaL mg Q DA C N u1.locals := by rw [hl1]; exact ⟨hm, hq, hda, hC, hN⟩
  obtain ⟨hm1, hq1, hda1, hC1, hN1⟩ := hl1'
  refine plp_dec hfs iwa_kp iwa_fp rfl hk1 ?_ (fun _ _ _ _ _ _ h => h)
    (fun L o hL => tailE_res L o (by decide) (by decide) (by decide) hL) ?_
  · intro vs hvs Γ1 p1 hr hp hG hL hE
    rw [evs_lv1 hq1 hvs]
    exact ⟨argsOK_any (by simp) rfl, fun _ => jrNZ_congr rfl hk1.1⟩
  · intro v st hst _ _
    have hS := kp_locals hH hst (setVarHOLFinite (nm "warm") v { st with locals := u1.locals }).locals
    have hlS : DaL mg Q DA C N (setVarHOLFinite (nm "warm") v { st with locals := u1.locals }).locals := by
      refine ⟨?_, ?_, ?_, ?_, ?_⟩ <;> rw [lk_set_ne _ _ (by decide)] <;> assumption
    refine plp_seq (Pl := DaL mg Q DA C N) (plp_ite ?_ ?_) fun u2 hk2 hl2 => ?_
    · exact plp_ps hlS (hoareG_kp_charge hfs hS)
    · refine plp_seq_ps hlS (hoareG_kp_charge hfs hS) fun u3 hk3 hl3 => ?_
      have hl3' : DaL mg Q DA C N u3.locals := by rw [hl3]; exact hlS
      refine plp_ps hl3' (hoareG_kp_call hfs wa_kp wa_fp rfl hk3 ?_ (fun _ _ _ _ _ _ h => h))
      intro vs hvs Γ1 p1 hr hp hG hL hE
      rw [evs_lv1 hl3'.2.1 hvs]
      exact ⟨argsOK_buf1 (bufOK_runT hG0 hr hbuf), fun _ => jrNZ_congr rfl hk3.1⟩
    · exact pd_da2 hRec hfs hk2 hG0 hl2 hbuf

end

end InitECandidate.Solver.MemSafe.D0

#print axioms InitECandidate.Solver.MemSafe.D0.plp_assign
#print axioms InitECandidate.Solver.MemSafe.D0.pd_da3
#print axioms InitECandidate.Solver.MemSafe.D0.pd_da1
