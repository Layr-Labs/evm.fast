import InitECandidate.Solver.MemSafe.D0.Sd7

/-!
# `set_delegation`: the loop iteration `sdIter` (assembly)
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

section
local notation "HJ" => (Hooks.guestHooksR (σ := σ))
local notation "gwJ" => [Hooks.gJn]
variable {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {fs : List Frame}
  {e c : BitVec 64} {rest : List Frame} {mg : BitVec 64}

/-- **One loop iteration.** -/
theorem sd_iter (hRA : RaH σ) (hSC : SetCodeH σ) (hfs : fs = (e, c) :: rest) {u0 : State σ}
    (hu : KP HJ gwJ Γ0 s0 p0 fs e mg u0) (hG0 : G guestC HJ Γ0 s0) {W S A I N : BitVec 64}
    {xs0 : List (MlS × ValueHOL 64)} (hxW : xs0.lookup (nm "written") = some (.val (.word W)))
    (hxS : xs0.lookup (nm "set_for") = some (.val (.word S)))
    (hxA : xs0.lookup (nm "auths") = some (.val (.word A))) (hfr : IterFresh xs0)
    (hl : LA u0.locals ((nm "i", .val (.word I)) :: xs0))
    (hW : Fits Γ0 (.ptr tHTh20) W) (hS : Fits Γ0 (.ptr tHTh20) S)
    (hSA : Hooks.SubArr Γ0 A N.toNat tAUTH 120) (hIN : I.toNat < N.toNat) :
    HoareG σ guestCtx (fun t => t = u0) sdIter
      (PLQ (KP HJ gwJ Γ0 s0 p0 fs e mg)
        (fun L => LA L ((nm "i", .val (.word (I + BitVec.ofNat 64 1))) :: xs0))) := by
  have hH := (Hooks.frameCfg_guestHooksR (σ := σ)).hooks
  have fr : ∀ n, n ∈ iterNames → xs0.lookup n = none := hfr
  let Pf : Locs → Prop := fun L => LA L ((nm "i", .val (.word (I + BitVec.ofNat 64 1))) :: xs0)
  have hres : ∀ (n : MlS), n ∈ iterNames → n ≠ nm "i" → ∀ (L : Locs) (o : Option (ValueHOL 64)),
      Pf L → Pf (L.resVarEq (n, o)) := fun n hn hni L o hL =>
    la_res hL (by rw [lk_cons_ne hni]; exact fr n hn) o
  have hi0 : u0.locals.lookup (nm "i") = some (.val (.word I)) := la_lookup hl (by simp [List.lookup])
  have hA0 : u0.locals.lookup (nm "auths") = some (.val (.word A)) :=
    la_lookup hl (by rw [lk_cons_ne (by decide)]; exact hxA)
  unfold sdIter
  -- auth
  refine plq_dec (hres _ (by decide) (by decide)) fun v hv _ => ?_
  obtain rfl := ev_auth_addr u0 hi0 hA0 hv
  set av := A + I * BitVec.ofNat 64 120 with hav
  have hu1 := kp_locals hH hu (setVarHOLFinite (nm "auth") (.val (.word av)) u0).locals
  have hl1 : LA (setVarHOLFinite (nm "auth") (.val (.word av)) u0).locals
      ((nm "auth", .val (.word av)) :: (nm "i", .val (.word I)) :: xs0) := la_set (s := u0) hl _ _
  set u1 := setVarHOLFinite (nm "auth") (.val (.word av)) u0 with hu1d
  -- authority
  refine plq_dec (hres _ (by decide) (by decide)) fun v hv _ => ?_
  rw [ev_cw] at hv; obtain rfl := (Option.some.inj hv).symm
  have hu2 := kp_locals hH hu1 (setVarHOLFinite (nm "authority") (.val (.word (BitVec.ofNat 64 0))) u1).locals
  have hl2 : LA (setVarHOLFinite (nm "authority") (.val (.word (BitVec.ofNat 64 0))) u1).locals
      ((nm "authority", .val (.word (BitVec.ofNat 64 0))) :: (nm "auth", .val (.word av)) ::
        (nm "i", .val (.word I)) :: xs0) := la_set (s := u1) hl1 _ _
  set u2 := setVarHOLFinite (nm "authority") (.val (.word (BitVec.ofNat 64 0))) u1 with hu2d
  -- cid
  refine plq_dec (hres _ (by decide) (by decide)) fun v hv _ => ?_
  have hu3 := kp_locals hH hu2 (setVarHOLFinite (nm "cid") v u2).locals
  have hl3 := la_set (s := u2) hl2 (nm "cid") v
  set u3 := setVarHOLFinite (nm "cid") v u2 with hu3d
  have g1 := sgOK0 (sg := (⟨[.any], [], [], false⟩ : Sig)) (gw := gwJ) rfl
  -- cz
  refine plq_decCall hfs uz_kp uz_fp g1.1 g1.2.1 g1.2.2 hu3 (hargs_any (by simp) rfl hu3)
    (fun _ _ _ _ _ _ h => h) (fun L o hL => hres _ (by decide) (by decide) L o hL) ?_
  intro vs4 callee4 hvs4 vz st4 hst4 hsh4
  have hu4 := kp_locals hH (kp_of_kpd hst4) (setVarHOLFinite (nm "cz") vz { st4 with locals := u3.locals }).locals
  have hl4 := la_set (s := st4) hl3 (nm "cz") vz
  set u4 := setVarHOLFinite (nm "cz") vz { st4 with locals := u3.locals } with hu4d
  -- cfit
  refine plq_decCall hfs fw_kp fw_fp g1.1 g1.2.1 g1.2.2 hu4 (hargs_any (by simp) rfl hu4)
    (fun _ _ _ _ _ _ h => h) (fun L o hL => hres _ (by decide) (by decide) L o hL) ?_
  intro vs5 callee5 hvs5 vf st5 hst5 hsh5
  have hu5 := kp_locals hH (kp_of_kpd hst5) (setVarHOLFinite (nm "cfit") vf { st5 with locals := u4.locals }).locals
  have hl5 := la_set (s := st5) hl4 (nm "cfit") vf
  set u5 := setVarHOLFinite (nm "cfit") vf { st5 with locals := u4.locals } with hu5d
  -- cid_ok
  refine plq_dec (hres _ (by decide) (by decide)) fun v hv _ => ?_
  rw [ev_cw] at hv; obtain rfl := (Option.some.inj hv).symm
  have hu6 := kp_locals hH hu5 (setVarHOLFinite (nm "cid_ok") (.val (.word (BitVec.ofNat 64 0))) u5).locals
  have hl6 := la_set (s := u5) hl5 (nm "cid_ok") (.val (.word (BitVec.ofNat 64 0)))
  set u6 := setVarHOLFinite (nm "cid_ok") (.val (.word (BitVec.ofNat 64 0))) u5 with hu6d
  let xs' : List (MlS × ValueHOL 64) := (nm "auth", .val (.word av)) :: (nm "i", .val (.word I)) :: xs0
  let ys0 : List (MlS × ValueHOL 64) := (nm "authority", .val (.word (BitVec.ofNat 64 0))) :: xs'
  have hys0 : ∀ n, n ∈ iterNames → n ≠ nm "authority" → n ≠ nm "auth" → n ≠ nm "i" →
      ys0.lookup n = none := fun n hn h1 h2 h3 => by
    show ((nm "authority", ValueHOL.val (.word (BitVec.ofNat 64 0))) :: (nm "auth", ValueHOL.val (.word av)) ::
      (nm "i", ValueHOL.val (.word I)) :: xs0).lookup n = none
    rw [lk_cons_ne h1, lk_cons_ne h2, lk_cons_ne h3]; exact fr n hn
  have hok := hys0 (nm "cid_ok") (by decide) (by decide) (by decide) (by decide)
  have hfi := hys0 (nm "cfit") (by decide) (by decide) (by decide) (by decide)
  have hcz := hys0 (nm "cz") (by decide) (by decide) (by decide) (by decide)
  have hci := hys0 (nm "cid") (by decide) (by decide) (by decide) (by decide)
  have hl7 : LA u6.locals ys0 :=
    la_drop (la_drop (la_drop (la_drop hl6
      (lk_none_cons (lk_none_cons (lk_none_cons hok (by decide)) (by decide)) (by decide)))
      (lk_none_cons (lk_none_cons hfi (by decide)) (by decide)))
      (lk_none_cons hcz (by decide))) hci
  have hPf : ∀ L o n, n ∈ iterNames → n ≠ nm "i" → LA L ((nm "i", .val (.word (I + BitVec.ofNat 64 1))) :: xs0) →
      LA (L.resVarEq (n, o)) ((nm "i", .val (.word (I + BitVec.ofNat 64 1))) :: xs0) :=
    fun L o n hn hni hL => hres n hn hni L o hL
  refine plq_seq (Pl := fun L => LA L ys0)
    (plq_iteG (plq_assign hu6 fun v hv => la_setv hl7 hok v u6) (plq_skipG hu6 hl7))
    fun u8 hk8 hl8 => ?_
  refine plq_seq (Pl := fun L => LA L ys0)
    (plq_iteG (plq_assign hk8 fun v hv => la_setv hl8 hok v u8) (plq_skipG hk8 hl8))
    fun u9 hk9 hl9 => ?_
  have hxA' : xs'.lookup (nm "auth") = some (.val (.word av)) := by simp [xs', List.lookup]
  have hvf : ValidFresh xs' := by
    have h : ∀ n, n ∈ iterNames → n ≠ nm "auth" → n ≠ nm "i" → xs'.lookup n = none :=
      fun n hn h2 h3 => by
        show ((nm "auth", ValueHOL.val (.word av)) :: (nm "i", ValueHOL.val (.word I)) :: xs0).lookup n = none
        rw [lk_cons_ne h2, lk_cons_ne h3]; exact fr n hn
    exact ⟨h _ (by decide) (by decide) (by decide), h _ (by decide) (by decide) (by decide),
      h _ (by decide) (by decide) (by decide)⟩
  have hAuthOK : ∀ Γ1 p1, RunT guestC HJ gwJ Γ0 s0 Γ1 u9 p0 p1 →
      ∃ x ∈ Γ1, x.ty = tAUTH ∧ x.lo ≤ av.toNat ∧ av.toNat + 120 ≤ x.hi :=
    fun Γ1 p1 hr => authArg_of (Hooks.subArr_ext hr.2.2.2.1 hSA) hIN
  refine hoareG_seq (R := PLE Γ0 s0 p0 fs e mg xs') ?_ (fun r t _ hr _ h => ?_) ?_
  · refine hoareG_ite (hoareG_pre (sd_valid hRA hfs hk9 hG0 hxA' hvf hl9 hAuthOK) fun _ _ h => h.1)
      (hoareG_pre (hoareG_skip fun _ _ h => by
        rw [h]; exact Or.inl ⟨rfl, 0, kpd_of_kp hk9 (fun _ _ => Or.inl rfl), hl9⟩) fun _ _ h => h.1)
  · rcases h with ⟨h0, -⟩ | ⟨r', h0, hA, hk⟩
    · exact absurd h0 hr
    · exact Or.inr ⟨r', h0, hA, hk⟩
  · refine hoareG_pt fun u h => ?_
    rcases h with ⟨-, a, hkd, hlt⟩ | ⟨r', h0, -⟩
    · exact sd_after hSC hfs hxW hxS hfr hkd hlt hW hS
    · cases h0

end

end InitECandidate.Solver.MemSafe.D0
#print axioms InitECandidate.Solver.MemSafe.D0.sd_iter
