import InitECandidate.Solver.MemSafe.D0.Sd3

/-!
# `set_delegation`: the body for a valid authority (`sdAuth`)
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

theorem la_setv {L : Locs} {xs : List (MlS × ValueHOL 64)} (h : LA L xs) {n : MlS}
    (hn : xs.lookup n = none) (v : ValueHOL 64) (s : State σ) :
    LA (setVarHOLFinite n v { s with locals := L }).locals xs :=
  la_sub (la_set h n v s) fun x w hx => by
    by_cases hxn : x = n
    · subst hxn; rw [hn] at hx; cases hx
    · rw [lk_cons_ne hxn]; exact hx

theorem evs_lv_any_cw {u : State σ} {x : MlS} {a : BitVec 64} {e2 : ExpHOL 64} {n : Nat}
    (hx : u.locals.lookup x = some (.val (.word a))) {vs : List (ValueHOL 64)}
    (h : evs u [lv x, e2, cw n] = some vs) :
    ∃ v2, vs = [.val (.word a), v2, .val (.word (BitVec.ofNat 64 n))] := by
  obtain ⟨p, vs1, rfl, hp, h1⟩ := evs_cons_inv h
  obtain ⟨q, vs2, rfl, hq, h2⟩ := evs_cons_inv h1
  obtain ⟨r, vs3, rfl, hr, h3⟩ := evs_cons_inv h2
  rw [evs_zero h3]
  rw [ev_lv, hx] at hp
  rw [ev_cw] at hr
  rw [← Option.some.inj hp, ← Option.some.inj hr]
  exact ⟨q, rfl⟩

/-- Names introduced inside `sdAuth` / `sdSet` are not among the known locals. -/
def AuthFresh (xs : List (MlS × ValueHOL 64)) : Prop :=
  xs.lookup (nm "ex") = none ∧ xs.lookup (nm "wr") = none ∧ xs.lookup (nm "pre") = none ∧
    xs.lookup (nm "pre_code") = none ∧ xs.lookup (nm "delegated_before") = none ∧
    xs.lookup (nm "is_null") = none ∧ xs.lookup (nm "sf") = none ∧ xs.lookup (nm "code") = none

section
local notation "HJ" => (Hooks.guestHooksR (σ := σ))
local notation "gwJ" => [Hooks.gJn]
variable {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {fs : List Frame}
  {e c : BitVec 64} {rest : List Frame} {mg : BitVec 64}

/-- **`sdAuth`**: the writes for a valid authority. -/
theorem sd_auth (hSC : SetCodeH σ) (hfs : fs = (e, c) :: rest) {u0 : State σ}
    (hu : KP HJ gwJ Γ0 s0 p0 fs e mg u0) (hG0 : G guestC HJ Γ0 s0) {W S a : BitVec 64}
    {xs : List (MlS × ValueHOL 64)} (hxW : xs.lookup (nm "written") = some (.val (.word W)))
    (hxS : xs.lookup (nm "set_for") = some (.val (.word S)))
    (hxa : xs.lookup (nm "authority") = some (.val (.word a))) (hfr : AuthFresh xs)
    (hl : LA u0.locals xs) (hW : Fits Γ0 (.ptr tHTh20) W) (hS : Fits Γ0 (.ptr tHTh20) S)
    (hbuf : BufOK guestC Γ0 p0 a.toNat 20) :
    HoareG σ guestCtx (fun t => t = u0) sdAuth
      (PLQ (KP HJ gwJ Γ0 s0 p0 fs e mg) (fun L => LA L xs)) := by
  have hH := (Hooks.frameCfg_guestHooksR (σ := σ)).hooks
  obtain ⟨fEx, fWr, fPre, fPc, fDb, fIn, fSf, fCo⟩ := hfr
  have g0 := sgOK0 (sg := (⟨[.buf 20], [], [], true⟩ : Sig)) (gw := gwJ) rfl
  have g1 := sgOK0 (sg := (⟨[.any, .any], [], [], false⟩ : Sig)) (gw := gwJ) rfl
  have g2 := sgOK0 (sg := (⟨[.any, .any], [], [], true⟩ : Sig)) (gw := gwJ) rfl
  have g3 := sgOK0 (sg := (⟨[.any, .any, .any], [], [], false⟩ : Sig)) (gw := gwJ) rfl
  have g4 := sgOK0 (sg := HtabEntries.setSig tHTh20) (gw := gwJ) rfl
  have gJ := sgOKJ (sg := (⟨[.buf 20], [], [Hooks.gJn], true⟩ : Sig)) rfl
  have gJ2 := sgOKJ (sg := (⟨[.buf 20, .any, .any], [], [Hooks.gJn], true⟩ : Sig)) rfl
  have hbufA : ∀ (u : State σ) Γ1 p1, RunT guestC HJ gwJ Γ0 s0 Γ1 u p0 p1 →
      BufOK guestC Γ1 p1 a.toNat 20 := fun _ Γ1 p1 hr => bufOK_runT hG0 hr hbuf
  unfold sdAuth
  have step : ∀ (n : MlS) (hn : xs.lookup n = none) (v : ValueHOL 64) (st u : State σ),
      KP HJ gwJ Γ0 s0 p0 fs e mg st → LA u.locals xs →
      KP HJ gwJ Γ0 s0 p0 fs e mg (setVarHOLFinite n v { st with locals := u.locals }) ∧
      LA (setVarHOLFinite n v { st with locals := u.locals }).locals xs :=
    fun n hn v st u hst hlu => ⟨kp_locals hH hst _, la_setv hlu hn v st⟩
  -- ex
  refine plq_decCall hfs ae_kp ae_fp g0.1 g0.2.1 g0.2.2 hu
    (hargs_buf1 rfl (fun vs hvs => evs_lv1 (la_lookup hl hxa) hvs) hu (fun Γ1 p1 hr => hbufA _ Γ1 p1 hr))
    (fun _ _ _ _ _ _ h => h) (fun L o hL => la_res hL fEx o) ?_
  intro vs callee hvs v st hst hsh
  obtain ⟨hu1, hl1⟩ := step _ fEx v st u0 (kp_of_kpd hst) hl
  refine plq_seq (Pl := fun L => LA L xs)
    (plq_ite (plq_ps hl1 (hoareG_kp_csgN hfs hu1)) (plq_skip hu1 hl1)) fun u2 hk2 hl2 => ?_
  -- wr
  refine plq_decCall hfs htf_kp htf_fp g1.1 g1.2.1 g1.2.2 hk2
    (hargs_any (by simp) rfl hk2) (fun _ _ _ _ _ _ h => h) (fun L o hL => la_res hL fWr o) ?_
  intro vs2 callee2 hvs2 v2 st2 hst2 hsh2
  obtain ⟨hu3, hl3⟩ := step _ fWr v2 st2 u2 (kp_of_kpd hst2) hl2
  refine plq_seq (Pl := fun L => LA L xs) (plq_ite ?_ (plq_skip hu3 hl3)) fun u4 hk4 hl4 => ?_
  · refine plq_seq_ps (Pl := fun L => LA L xs) (Pl' := fun L => LA L xs) (hoareG_kp_chargeN hfs hu3) fun u5 hk5 hl5 => ?_
    have hl5' : LA u5.locals xs := by rw [hl5]; exact hl3
    refine plq_call hfs hs_kp hs_fp g4.1 g4.2.1 g4.2.2 hk5 hl5' ?_ (fun _ _ _ _ _ _ h => h)
    intro vs' hvs' Γ1 p1 hr hp hG hL hE'
    rw [evs_lv2cw (la_lookup hl5' hxW) (la_lookup hl5' hxa) hvs']
    exact ⟨argsOK_set (fits_ext hr.2.2.2.1 hW) (hbufA _ Γ1 p1 hr), fun _ => trivial⟩
  -- pre
  refine plq_decCall hfs gpsa_sum gpsa_fp g0.1 g0.2.1 g0.2.2 hk4
    (hargs_buf1 rfl (fun vs hvs => evs_lv1 (la_lookup hl4 hxa) hvs) hk4 (fun Γ1 p1 hr => hbufA _ Γ1 p1 hr))
    (fun _ _ _ _ _ _ h => h) (fun L o hL => la_res hL fPre o) ?_
  intro vs3 callee3 hvs3 v3 st3 hst3 hsh3
  obtain ⟨hu5, hl5⟩ := step _ fPre v3 st3 u4 (kp_of_kpd hst3) hl4
  -- pre_code
  refine plq_decCall hfs gc_kp gc_fp g2.1 g2.2.1 g2.2.2 hu5
    (hargs_any (by simp) rfl hu5) (fun _ _ _ _ _ _ h => h) (fun L o hL => la_res hL fPc o) ?_
  intro vs4 callee4 hvs4 v4 st4 hst4 hsh4
  obtain ⟨hu6, hl6⟩ := step _ fPc v4 st4 _ (kp_of_kpd hst4) hl5
  -- delegated_before
  refine plq_decCall hfs ivd_kp ivd_fp g1.1 g1.2.1 g1.2.2 hu6
    (hargs_any (by simp) rfl hu6) (fun _ _ _ _ _ _ h => h) (fun L o hL => la_res hL fDb o) ?_
  intro vs5 callee5 hvs5 v5 st5 hst5 hsh5
  obtain ⟨hu7, hl7⟩ := step _ fDb v5 st5 _ (kp_of_kpd hst5) hl6
  -- is_null
  refine plq_decCall hfs mq_kp mq_fp g3.1 g3.2.1 g3.2.2 hu7
    (hargs_any (by simp) rfl hu7) (fun _ _ _ _ _ _ h => h) (fun L o hL => la_res hL fIn o) ?_
  intro vs6 callee6 hvs6 v6 st6 hst6 hsh6
  obtain ⟨hu8, hl8⟩ := step _ fIn v6 st6 _ (kp_of_kpd hst6) hl7
  refine plq_seq (Pl := fun L => LA L xs) (plq_ite ?_ ?_) fun u9 hk9 hl9 => ?_
  · refine plq_call hfs (sc_kp hSC) sc_fp gJ2.1 gJ2.2.1 gJ2.2.2 hu8 hl8 ?_ (fun _ _ _ _ _ _ h => h)
    intro vs' hvs' Γ1 p1 hr hp hG hL hE'
    obtain ⟨vv, rfl⟩ := evs_lv_any_cw (la_lookup hl8 hxa) hvs'
    refine ⟨?_, fun _ => ⟨hu8.1, BitVec.ofNat 64 0, rfl, by decide⟩⟩
    refine ⟨rfl, fun i pt w hpt hw => ?_⟩
    rcases i with _ | _ | _ | i <;> simp at hpt hw <;> subst hpt <;> subst hw
    · exact ⟨a, rfl, hbufA _ Γ1 p1 hr⟩
    · trivial
    · trivial
  · exact sd_set hSC hfs hu8 hG0 hxS hxa fSf fCo hl8 hS hbuf
  · refine plq_call hfs inc_kp inc_fp gJ.1 gJ.2.1 gJ.2.2 hk9 hl9 ?_ (fun _ _ _ _ _ _ h => h)
    exact hargs_buf1 rfl (fun vs hvs => evs_lv1 (la_lookup hl9 hxa) hvs) hk9 (fun Γ1 p1 hr => hbufA _ Γ1 p1 hr)

end

end InitECandidate.Solver.MemSafe.D0
#print axioms InitECandidate.Solver.MemSafe.D0.sd_auth
