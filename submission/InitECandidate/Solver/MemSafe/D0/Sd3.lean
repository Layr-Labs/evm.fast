import InitECandidate.Solver.MemSafe.D0.PlKit4
import InitECandidate.Solver.MemSafe.D0.Sd2
import InitECandidate.Solver.MemSafe.D0.SdBase
import InitECandidate.Solver.MemSafe.D0.SdCode
import InitECandidate.Solver.MemSafe.D0.StoreB
import InitECandidate.Solver.MemSafe.D0.Pd5

/-!
# `set_delegation`: the `is_null == 0` branch (`sdSet`)
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

theorem htKL_20 : htKL tHTh20 = 20 := by decide
theorem valPT_any : HtabEntries.valPT tHTh20 = .any := by decide

/-- `htab_set(T, key, 1)`'s arguments: the table fits and the key is a buffer. -/
theorem argsOK_set {Γ : Gam} {p : Ptrs} {T k v : BitVec 64} (hT : Fits Γ (.ptr tHTh20) T)
    (hk : BufOK guestC Γ p k.toNat 20) :
    ArgsOK guestC Γ p (HtabEntries.setSig tHTh20).params [.val (.word T), .val (.word k), .val (.word v)] := by
  refine ⟨rfl, fun i pt w hpt hw => ?_⟩
  rcases i with _ | _ | _ | i
  · simp only [HtabEntries.setSig, List.getElem?_cons_zero, Option.some.injEq] at hpt hw
    subst hpt hw; exact ⟨T, rfl, hT⟩
  · simp only [HtabEntries.setSig, List.getElem?_cons_succ, List.getElem?_cons_zero,
      Option.some.injEq] at hpt hw
    subst hpt hw; exact ⟨k, rfl, by rw [htKL_20]; exact hk⟩
  · simp only [HtabEntries.setSig, List.getElem?_cons_succ, List.getElem?_cons_zero,
      Option.some.injEq] at hpt hw
    subst hpt hw
    show ArgOK guestC Γ p _ (HtabEntries.valPT tHTh20) _
    rw [valPT_any]; trivial
  · simp [HtabEntries.setSig] at hpt

theorem evs_addk {u : State σ} {x : MlS} {a : BitVec 64} {k n : Nat} {e2 : ExpHOL 64}
    (hx : u.locals.lookup x = some (.val (.word a))) {vs : List (ValueHOL 64)}
    (h : evs u [.op .add [lv x, cw k], e2, cw n] = some vs) :
    ∃ v2, vs = [.val (.word (a + BitVec.ofNat 64 k)), v2, .val (.word (BitVec.ofNat 64 n))] := by
  obtain ⟨p, vs1, rfl, hp, h1⟩ := evs_cons_inv h
  obtain ⟨q, vs2, rfl, hq, h2⟩ := evs_cons_inv h1
  obtain ⟨r, vs3, rfl, hr, h3⟩ := evs_cons_inv h2
  rw [evs_zero h3]
  rw [ev_add2 (ev_lv_eq hx) (ev_cw u k)] at hp
  rw [ev_cw] at hr
  rw [← Option.some.inj hp, ← Option.some.inj hr]
  exact ⟨q, rfl⟩

theorem lk_cons_ne {n m : MlS} {v : ValueHOL 64} {xs : List (MlS × ValueHOL 64)} (h : n ≠ m) :
    ((m, v) :: xs).lookup n = xs.lookup n := by
  have : (n == m) = false := by simpa using h
  simp [List.lookup, this]

theorem bv_add_toNat {q : BitVec 64} (hq : q.toNat % 8 = 0) (k : Nat) (hk : k ≤ 7) :
    (q + BitVec.ofNat 64 k).toNat = q.toNat + k := by
  rw [BitVec.toNat_add, BitVec.toNat_ofNat]
  have := q.isLt
  rw [Nat.mod_eq_of_lt (show k < 2 ^ 64 by omega), Nat.mod_eq_of_lt (by omega)]

section
local notation "HJ" => (Hooks.guestHooksR (σ := σ))
local notation "gwJ" => [Hooks.gJn]
variable {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {fs : List Frame}
  {e c : BitVec 64} {rest : List Frame} {mg : BitVec 64}

/-- Locals of the `is_null == 0` branch. -/
def SetL (S a : BitVec 64) : List (MlS × ValueHOL 64) :=
  [(nm "set_for", .val (.word S)), (nm "authority", .val (.word a))]

/-- The tail of `sdSet` after `htab_set(set_for, authority, 1)`: `alloc(24)`, the bytes, `memcpy`,
`set_code`. -/
theorem sd_set_code (hSC : SetCodeH σ) (hfs : fs = (e, c) :: rest) {u0 : State σ}
    (hu : KP HJ gwJ Γ0 s0 p0 fs e mg u0) (hG0 : G guestC HJ Γ0 s0) {a : BitVec 64}
    {xs : List (MlS × ValueHOL 64)} (hxs : xs.lookup (nm "authority") = some (.val (.word a)))
    (hxc : xs.lookup (nm "code") = none)
    (hl : LA u0.locals xs) (hbuf : BufOK guestC Γ0 p0 a.toNat 20) :
    HoareG σ guestCtx (fun t => t = u0)
      (.decCall (nm "code") .one (nm "alloc") [cw 24]
        (.seq (.storeByte (lv (nm "code")) (cw 239))
          (.seq (.storeByte (.op .add [lv (nm "code"), cw 1]) (cw 1))
            (.seq (.storeByte (.op .add [lv (nm "code"), cw 2]) (cw 0))
              (.seq (callD (nm "memcpy") [.op .add [lv (nm "code"), cw 3], lLoad "auth" 32, cw 20])
                (callD (nm "set_code") [lv (nm "authority"), lv (nm "code"), cw 23]))))))
      (PLQ (KP HJ gwJ Γ0 s0 p0 fs e mg) (fun L => LA L xs)) := by
  have hH := (Hooks.frameCfg_guestHooksR (σ := σ)).hooks
  refine plq_alloc24 hfs hu (fun L o hL => la_res hL hxc o) fun q st hkd => ?_
  have hkd' := hkd
  obtain ⟨hJ, Γ2, p2, hrun, hch, hE, hΦ, h112, Γa, pa, hfr, hq8⟩ := hkd
  have hG2 := hrun.2.2.2.2.2.1
  have hp2 := hrun.2.1
  have hu2 : KP HJ gwJ Γ2 st p2 fs e mg st :=
    ⟨hJ, Γ2, p2, runT_refl hG2 hp2, hch, hE, le_refl _, h112⟩
  have hbuf2 : BufOK guestC Γ2 p2 a.toNat 20 := bufOK_runT hG0 hrun hbuf
  set s2 := setVarHOLFinite (nm "code") (.val (.word q)) { st with locals := u0.locals } with hs2
  have hu2s : KP HJ gwJ Γ2 st p2 fs e mg s2 := kp_locals hH hu2 s2.locals
  have hl2 : LA s2.locals ((nm "code", .val (.word q)) :: xs) := la_set hl _ _ st
  have hq : s2.locals.lookup (nm "code") = some (.val (.word q)) := lk_set_self _ _ _
  have hexp : ∀ (ro : Option (PanSemResultExact 64)) (t : State σ),
      PLQ (KP HJ gwJ Γ2 st p2 fs e mg) (fun L => LA L ((nm "code", .val (.word q)) :: xs)) ro t →
      PLQ (KP HJ gwJ Γ0 s0 p0 fs e mg) (fun L => LA L xs) ro t := fun ro t h =>
    plq_mono (fun t ht => kp_trans (kp_of_kpd hkd') hrun ht)
      (fun L hL => la_sub hL fun x v hx => by
        by_cases hxn : x = nm "code"
        · subst hxn; rw [hxc] at hx; cases hx
        · have : (x == nm "code") = false := by simpa using hxn
          simpa [List.lookup, this] using hx) h
  refine hoareG_conseq (P := fun t => t = s2)
    (Q := PLQ (KP HJ gwJ Γ2 st p2 fs e mg) (fun L => LA L ((nm "code", .val (.word q)) :: xs)))
    ?_ (fun _ _ h => h) (fun ro t _ _ h => hexp ro t h)
  -- under the new base (Γ2, st, p2)
  have hbyte : ∀ (off : Nat) (x : ExpHOL 64) (v : ExpHOL 64) (u : State σ),
      KP HJ gwJ Γ2 st p2 fs e mg u →
      off < 8 → (∀ w, ev u x = some (.val (.word w)) → w = q + BitVec.ofNat 64 off) →
      HoareG σ guestCtx (fun t => t = u) (.storeByte x v)
        (PSn (KP HJ gwJ Γ2 st p2 fs e mg) u.locals) := by
    intro off x v u hk hoff hx
    exact hoareG_kpStByteN hfs hk hoff hq8 hx fun Γ1 p1 hr => freshB_ext hr.2.2.2.1 hfr
  have hlq : ∀ u : State σ, u.locals = s2.locals → LA u.locals ((nm "code", .val (.word q)) :: xs) :=
    fun u hu' => by rw [hu']; exact hl2
  have hqq : ∀ u : State σ, u.locals = s2.locals → u.locals.lookup (nm "code") = some (.val (.word q)) :=
    fun u hu' => by rw [hu']; exact hq
  refine plq_seq_ps (Pl := fun L => LA L ((nm "code", .val (.word q)) :: xs))
    (hbyte 0 _ _ s2 hu2s (by omega) ?_) fun u3 hk3 hl3 => ?_
  · intro w hw
    rw [ev_lv, hq] at hw
    simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hw
    rw [← hw]; simp
  refine plq_seq_ps (Pl := fun L => LA L ((nm "code", .val (.word q)) :: xs))
    (hbyte 1 _ _ u3 hk3 (by omega) ?_) fun u4 hk4 hl4 => ?_
  · intro w hw
    rw [ev_add2 (ev_lv_eq (hqq u3 hl3)) (ev_cw u3 1)] at hw
    simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hw
    exact hw.symm
  refine plq_seq_ps (Pl := fun L => LA L ((nm "code", .val (.word q)) :: xs))
    (hbyte 2 _ _ u4 hk4 (by omega) ?_) fun u5 hk5 hl5 => ?_
  · intro w hw
    rw [ev_add2 (ev_lv_eq (hqq u4 (hl4.trans hl3))) (ev_cw u4 2)] at hw
    simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hw
    exact hw.symm
  have hl5' : u5.locals = s2.locals := hl5.trans (hl4.trans hl3)
  refine plq_seq (Pl := fun L => LA L ((nm "code", .val (.word q)) :: xs))
    (plq_call hfs memcpy_sa memcpy_fp (sgOK0 (gw := [Hooks.gJn]) rfl).1 (sgOK0 (gw := [Hooks.gJn]) rfl).2.1 (sgOK0 (gw := [Hooks.gJn]) rfl).2.2 hk5
      (hlq u5 hl5') ?_ (fun _ _ _ _ _ _ h => h.elim)) fun u6 hk6 hl6 => ?_
  · intro vs hvs Γ1 p1 hr hp hG hL hE'
    obtain ⟨v2, rfl⟩ := evs_addk (hqq u5 hl5') hvs
    refine ⟨?_, fun _ => trivial⟩
    have hB := freshB_bufOK hG hp (freshB_ext hr.2.2.2.1 hfr) (off := 3) (n := 20) (by omega)
    have h20 : (1 * (BitVec.ofNat 64 20).toNat + 0) = 20 := by decide
    refine ⟨rfl, fun i pt w hpt hw => ?_⟩
    rcases i with _ | _ | _ | i <;> simp [Helpers.sigMemcpy] at hpt hw <;> subst hpt <;> subst hw
    · refine ⟨q + BitVec.ofNat 64 3, _, rfl, rfl, ?_⟩
      rw [h20, bv_add_toNat hq8 3 (by omega)]; exact hB
    · trivial
    · trivial
  have hla6 : LA u6.locals ((nm "code", .val (.word q)) :: xs) := hl6
  have hauth6 : u6.locals.lookup (nm "authority") = some (.val (.word a)) :=
    la_lookup hl6 (by rw [lk_cons_ne (by decide)]; exact hxs)
  have hcode6 : u6.locals.lookup (nm "code") = some (.val (.word q)) := la_lookup hl6 (by simp [List.lookup])
  refine plq_call hfs (sc_kp hSC) sc_fp (sgOKJ rfl).1 (sgOKJ rfl).2.1 (sgOKJ rfl).2.2 hk6 hla6 ?_
    (fun _ _ _ _ _ _ h => h)
  intro vs hvs Γ1 p1 hr hp hG hL hE'
  rw [evs_lv2cw hauth6 hcode6 hvs]
  refine ⟨?_, fun _ => ⟨hk6.1, BitVec.ofNat 64 23, rfl, by decide⟩⟩
  refine ⟨rfl, fun i pt w hpt hw => ?_⟩
  rcases i with _ | _ | _ | i <;> simp at hpt hw <;> subst hpt <;> subst hw
  · exact ⟨a, rfl, bufOK_runT hG2 hr hbuf2⟩
  · trivial
  · trivial

theorem la_lookup_cons {n m : MlS} {v : ValueHOL 64} {xs : List (MlS × ValueHOL 64)} {L : Locs}
    (h : LA L ((m, v) :: xs)) (hne : n ≠ m) {w : ValueHOL 64} (hx : xs.lookup n = some w) :
    L.lookup n = some w := h n w (by rw [lk_cons_ne hne]; exact hx)

theorem la_drop {L : Locs} {m : MlS} {v : ValueHOL 64} {xs : List (MlS × ValueHOL 64)}
    (h : LA L ((m, v) :: xs)) (hxm : xs.lookup m = none) : LA L xs := by
  refine la_sub h fun x w hx => ?_
  by_cases hxn : x = m
  · subst hxn; rw [hxm] at hx; cases hx
  · rw [lk_cons_ne hxn]; exact hx

/-- **The `is_null == 0` branch.** -/
theorem sd_set (hSC : SetCodeH σ) (hfs : fs = (e, c) :: rest) {u0 : State σ}
    (hu : KP HJ gwJ Γ0 s0 p0 fs e mg u0) (hG0 : G guestC HJ Γ0 s0) {S a : BitVec 64}
    {xs : List (MlS × ValueHOL 64)} (hxS : xs.lookup (nm "set_for") = some (.val (.word S)))
    (hxa : xs.lookup (nm "authority") = some (.val (.word a)))
    (hxsf : xs.lookup (nm "sf") = none) (hxc : xs.lookup (nm "code") = none)
    (hl : LA u0.locals xs) (hS : Fits Γ0 (.ptr tHTh20) S) (hbuf : BufOK guestC Γ0 p0 a.toNat 20) :
    HoareG σ guestCtx (fun t => t = u0) sdSet
      (PLQ (KP HJ gwJ Γ0 s0 p0 fs e mg) (fun L => LA L xs)) := by
  have hH := (Hooks.frameCfg_guestHooksR (σ := σ)).hooks
  unfold sdSet
  refine plq_decCall hfs htf_kp htf_fp (sgOK0 (gw := [Hooks.gJn]) rfl).1
    (sgOK0 (gw := [Hooks.gJn]) rfl).2.1 (sgOK0 (gw := [Hooks.gJn]) rfl).2.2 hu
    (hargs_any (by simp) rfl hu) (fun _ _ _ _ _ _ h => h) (fun L o hL => la_res hL hxsf o) ?_
  intro vs callee hvs v st hst hsh
  have hu1 : KP HJ gwJ Γ0 s0 p0 fs e mg (setVarHOLFinite (nm "sf") v { st with locals := u0.locals }) :=
    kp_locals hH (kp_of_kpd hst) _
  set u1 := setVarHOLFinite (nm "sf") v { st with locals := u0.locals } with hu1d
  have hl1 : LA u1.locals ((nm "sf", v) :: xs) := la_set hl _ _ st
  have hxS1 : ((nm "sf", v) :: xs).lookup (nm "set_for") = some (.val (.word S)) := by
    rw [lk_cons_ne (by decide)]; exact hxS
  have hxa1 : ((nm "sf", v) :: xs).lookup (nm "authority") = some (.val (.word a)) := by
    rw [lk_cons_ne (by decide)]; exact hxa
  have hxc1 : ((nm "sf", v) :: xs).lookup (nm "code") = none := by
    rw [lk_cons_ne (by decide)]; exact hxc
  refine hoareG_conseq (P := fun t => t = u1)
    (Q := PLQ (KP HJ gwJ Γ0 s0 p0 fs e mg) (fun L => LA L ((nm "sf", v) :: xs))) ?_ (fun _ _ h => h)
    (fun ro t _ _ h => plq_mono (fun t ht => ht) (fun L hL => la_drop hL hxsf) h)
  refine plq_seq (Pl := fun L => LA L ((nm "sf", v) :: xs))
    (plq_ite (plq_ps hl1 (hoareG_kp_csgN hfs hu1)) (plq_skip hu1 hl1)) fun u2 hk2 hl2 => ?_
  refine plq_seq (Pl := fun L => LA L ((nm "sf", v) :: xs))
    (plq_call hfs hs_kp hs_fp (sgOK0 (gw := [Hooks.gJn]) rfl).1 (sgOK0 (gw := [Hooks.gJn]) rfl).2.1
      (sgOK0 (gw := [Hooks.gJn]) rfl).2.2 hk2 hl2 ?_ (fun _ _ _ _ _ _ h => h))
    fun u3 hk3 hl3 => ?_
  · intro vs' hvs' Γ1 p1 hr hp hG hL hE'
    rw [evs_lv2cw (la_lookup hl2 hxS1) (la_lookup hl2 hxa1) hvs']
    exact ⟨argsOK_set (fits_ext hr.2.2.2.1 hS) (bufOK_runT hG0 hr hbuf), fun _ => trivial⟩
  exact sd_set_code hSC hfs hk3 hG0 hxa1 hxc1 hl3 hbuf

end


end InitECandidate.Solver.MemSafe.D0

#print axioms InitECandidate.Solver.MemSafe.D0.argsOK_set
#print axioms InitECandidate.Solver.MemSafe.D0.evs_addk
#print axioms InitECandidate.Solver.MemSafe.D0.sd_set_code
#print axioms InitECandidate.Solver.MemSafe.D0.sd_set
