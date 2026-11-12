import InitECandidate.Solver.MemSafe.Hooks.Rec
import InitECandidate.Solver.MemSafe.Frames.BundleJ

/-!
# `child_message`: an exact-effect constructor (task 3, step 1)

```
fun 1 msg_new_scratch() { var 1 m = scratch_alloc(176); memzero(m, 176); return m; }
fun 1 child_message(caller, target, current_target, gas, reservoir, {1,1,1,1} value, data,
    data_n, code_address, code, code_n, transfer, is_static, disable_pre) {
  var pm = lds 1 (ev + EV_MSG); var 1 m = msg_new_scratch();
  st m + 0 .. m + 136 (caller, ..., depth = pm.depth + 1, transfer); stat; st m + 144, stat;
  st m + 152, lds 1 (ev + EV_ACC_ADDRS); st m + 160, lds 1 (ev + EV_ACC_KEYS);
  st m + 168, disable_pre; return m; }
```

* `cmBody` (`code_cm`, `guestAst[594]`), `mnsBody` (`code_mns`, `guestAst[466]`); `noExc_cm`.
* **`mns_spec`**: a return of `msg_new_scratch` is a fresh, aligned, live 176-byte scratch block
  `[m, m + 176)`, unallocated before; only it and `scratch_ptr` changed.
* The tracking state `CMS`: `Trk` (no protected writes, `Γ` unchanged), the block, the recorded
  fields. Steps: `cms_storeV` (any store into the block), `cms_store1` (a word store, recorded).
* **`cm_sumSpec`**: `SumSpecA … "child_message" (sgA 14 []) (∃ e, EvRun) False CMQ` — the new
  `⟨m, tMSGs, 176⟩` joins `Γ`, `m + 176 ≤ sp ≤ m` bounds, GAS / CODE_N / CURRENT_TARGET recorded.
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedSectionVars false
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Frames
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe.Types InitECandidate.Solver.MemSafe.Struct
open InitECandidate.Solver.MemSafe.Helpers

variable {σ : Type} {X : Ctx 64}

/-! ## The code -/

def mnsBody : ProgHOL 64 :=
  .decCall (nm "m") .one (nm "scratch_alloc") [cw 176]
    (.seq (callD (nm "memzero") [lv (nm "m"), cw 176]) (.return (lv (nm "m"))))

theorem entry_mns : fnEntry Guest.Software.guestFn_msg_new_scratch =
    (nm "msg_new_scratch", [], mnsBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_mns : guestCode (nm "msg_new_scratch") = some ([], mnsBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 466) (by decide)) ⟨_, rfl⟩
    entry_mns

def cmTail : ProgHOL 64 :=
  .seq (.ite (.cmp .notEqual (ldL "pm" 144) (cw 0)) (.assign .local (nm "stat") (cw 1)) .skip)
  (.seq (stL "m" 144 (lv (nm "stat")))
  (.seq (stL "m" 152 (gLoad "ev" 168))
  (.seq (stL "m" 160 (gLoad "ev" 176))
  (.seq (stL "m" 168 (lv (nm "disable_pre")))
  (.return (lv (nm "m")))))))

def cmStores2 : ProgHOL 64 :=
  .seq (stL "m" 88 (lv (nm "data")))
  (.seq (stL "m" 96 (lv (nm "data_n")))
  (.seq (stL "m" 104 (lv (nm "code_address")))
  (.seq (stL "m" 112 (lv (nm "code")))
  (.seq (stL "m" 120 (lv (nm "code_n")))
  (.seq (stL "m" 128 (.op .add [ldL "pm" 128, cw 1]))
  (.seq (stL "m" 136 (lv (nm "transfer")))
  (.dec (nm "stat") .one (lv (nm "is_static")) cmTail)))))))

def cmStores : ProgHOL 64 :=
  .seq (stL "m" 0 (ldL "pm" 0))
  (.seq (stL "m" 8 (ldL "pm" 8))
  (.seq (stL "m" 16 (lv (nm "caller")))
  (.seq (stL "m" 24 (lv (nm "target")))
  (.seq (stL "m" 32 (lv (nm "current_target")))
  (.seq (stL "m" 40 (lv (nm "gas")))
  (.seq (stL "m" 48 (lv (nm "reservoir")))
  (.seq (stL "m" 56 (lv (nm "value"))) cmStores2)))))))

def cmBody : ProgHOL 64 :=
  .dec (nm "pm") .one (gLoad "ev" 112) (.decCall (nm "m") .one (nm "msg_new_scratch") [] cmStores)

def cmParams : List (MlS × ShapeHOL) :=
  [(nm "caller", .one), (nm "target", .one), (nm "current_target", .one), (nm "gas", .one),
    (nm "reservoir", .one), (nm "value", .comb [.one, .one, .one, .one]), (nm "data", .one),
    (nm "data_n", .one), (nm "code_address", .one), (nm "code", .one), (nm "code_n", .one),
    (nm "transfer", .one), (nm "is_static", .one), (nm "disable_pre", .one)]

theorem entry_cm : fnEntry Guest.Software.guestFn_child_message =
    (nm "child_message", cmParams, cmBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_cm : guestCode (nm "child_message") = some (cmParams, cmBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 594) (by decide)) ⟨_, rfl⟩
    entry_cm

/-! ## Only returns and abortive results -/

theorem xchk_mns : xChk fnewX false (declPair Guest.Software.guestFn_msg_new_scratch).2.2 = true := by
  conv => lhs; arg 3; cbv
  decide

theorem noExc_mns (hX : X.code.lookup = guestCode) : NoExc σ X (nm "msg_new_scratch") :=
  HtabEntries.noExc_of_pair (noExc_fnewX hX) hX (p := declPair Guest.Software.guestFn_msg_new_scratch)
    (declPair_valid (List.getElem_mem (n := 466) (by decide)) ⟨_, rfl⟩) xchk_mns

theorem xchk_cm : xChk (nm "msg_new_scratch" :: fnewX) false
    (declPair Guest.Software.guestFn_child_message).2.2 = true := by
  conv => lhs; arg 3; cbv
  decide

/-- **`child_message` has only returns and abortive results.** -/
theorem noExc_cm (hX : X.code.lookup = guestCode) : NoExc σ X (nm "child_message") :=
  HtabEntries.noExc_of_pair (noExcTab_cons (noExc_fnewX hX) (noExc_mns hX)) hX
    (p := declPair Guest.Software.guestFn_child_message)
    (declPair_valid (List.getElem_mem (n := 594) (by decide)) ⟨_, rfl⟩) xchk_cm

/-! ## `msg_new_scratch` -/

/-- A return of `msg_new_scratch` from `s` (allocator state `p`) to `t`. -/
def MnsQ (s : State σ) (p : Ptrs) (v : ValueHOL 64) (t : State σ) : Prop :=
  ∃ m p', v = .val (.word m) ∧ ptrsOf t = some p' ∧ p'.Ordered ∧ p.Mono p' ∧ m.toNat % 8 = 0 ∧
    p'.sp ≤ m.toNat ∧ m.toNat + 176 ≤ scratchEnd ∧
    (∀ a, m.toNat ≤ a → a < m.toNat + 176 → ¬ p.Allocated a) ∧
    ModifiesOnly (fun a => m.toNat ≤ a.toNat ∧ a.toNat < m.toNat + 176) s.memory t.memory ∧
    (∀ g, g ≠ gScratch → t.globals.lookup g = s.globals.lookup g) ∧
    t.memaddrs = s.memaddrs ∧ t.be = s.be

/-- **`msg_new_scratch`**: a fresh 176-byte scratch block, only it written. -/
theorem mns_spec (hX : X.code.lookup = guestCode) (hal : AlignedDom X) :
    FunSpec σ X (nm "msg_new_scratch") (fun _ s r t => Good (some r) → ∀ v, r = .returned v →
      ∀ p, ptrsOf s = some p → p.Ordered → MnsQ s p v t) := by
  refine funSpec_of_hoareG fun vs body callee rs hl s0 hs0 hloc => ?_
  rw [hX] at hl
  obtain ⟨rfl, -, -⟩ := lookupCode_zero code_mns hl
  suffices H : ∀ p, ptrsOf s0 = some p → p.Ordered → HoareG σ X (fun t => t = s0) mnsBody
      (fun r t => ∀ v, r = some (.returned v) → MnsQ s0 p v t) by
    intro s hs hss hg r' hr' v hv p hp hord
    subst hss
    exact H p hp hord s hs rfl hg v (by rw [hr', hv])
  intro p hp hord
  refine hoareG_decCall (FunSpec.and (allocSpec_scratch_alloc hX)
    (funSpec_dom (σ := σ) (X := X) _)) ?_
    (fun s _ _ vs _ callee r st _ _ habn v hv => absurd (Option.some.inj hv)
      (not_returned_of_abn habn v))
  intro s _ hs vs hvs callee v st ⟨hAl, hd1, hbe1⟩ _ _
  subst s
  rw [show evs s0 [cw 176] = some [.val (.word (BitVec.ofNat 64 176))] from
    evs_cons (ev_cw _ 176) evs_nil] at hvs
  cases hvs
  have hpe : ptrsOf (callEntryStateHOLFinite s0 callee) = some p := (ptrsOf_congr rfl).trans hp
  obtain ⟨hm1, hgl1, p1, hp1, hord1, hmo1, hret1⟩ := hAl (by simp [Good]) _ p rfl hpe hord
  obtain ⟨M, rfl, hM8, hMlive, hMna⟩ := hret1 _ rfl
  have h176 : (BitVec.ofNat 64 176).toNat = 176 := rfl
  rw [h176] at hMlive hMna
  set u1 := setVarHOLFinite (nm "m") (.val (.word M)) { st with locals := s0.locals } with hu1
  refine hoareG_seq (R := fun r t => (r = none → t.locals.lookup (nm "m") = some (.val (.word M)) ∧
      MnsQ s0 p (.val (.word M)) t) ∧ ∀ v, r = some (.returned v) → MnsQ s0 p v t) ?_
    (fun r t _ hr _ h => h.2) ?_
  · refine hoareG_callD (FunSpec.and (foot_memzero hX hal) (funSpec_dom (σ := σ) (X := X) _)) ?_
      (fun s _ _ vs _ callee r st _ _ habn => ⟨(fun h => by cases h), fun v hv =>
        absurd (Option.some.inj hv) (not_returned_of_abn habn v)⟩)
    · intro s _ hs vs hvs callee2 v2 st2 ⟨hfz, hd2, hbe2⟩ _
      subst s
      rw [show evs u1 [lv (nm "m"), cw 176] = some [.val (.word M), .val (.word (BitVec.ofNat 64 176))]
        from evs_cons (ev_lw (lk_set_self _ _ _)) (evs_cons (ev_cw _ 176) evs_nil)] at hvs
      cases hvs
      obtain ⟨hg2, hmod2⟩ := hfz (by simp [Good]) ⟨M, _, rfl, rfl, Or.inr (by rw [h176]; exact hMlive.2)⟩
      refine ⟨fun _ => ⟨lk_set_self _ _ _, ?_⟩, fun v h => by cases h⟩
      refine ⟨M, p1, rfl, ?_, hord1, hmo1, hM8, hMlive.1, hMlive.2, hMna, ?_, ?_, ?_, ?_⟩
      · show ptrsOf st2 = some p1
        rw [ptrsOf_congr hg2]; exact hp1
      · intro a ha
        show st2.memory a = s0.memory a
        rw [hmod2 a ?_]
        · show st.memory a = s0.memory a
          rw [hm1]; rfl
        rintro ⟨D, N, hD, hN, ha8, h1, h2⟩
        simp only [argW, wordOf, List.getElem?_cons_zero, List.getElem?_cons_succ,
          Option.some.injEq] at hD hN
        subst hD hN
        rw [h176] at h2
        exact ha ⟨by omega, h2⟩
      · intro g hg
        show st2.globals.lookup g = _
        rw [hg2]
        show st.globals.lookup g = _
        exact hgl1 g hg
      · show st2.memaddrs = _; rw [hd2]; exact hd1
      · show st2.be = _; rw [hbe2]; exact hbe1
  · refine hoareG_return fun u _ hu v hv v' hv' => ?_
    obtain ⟨hlm, hq⟩ := hu.1 rfl
    rw [ev_lv, hlm] at hv
    cases hv
    cases hv'
    exact hq

/-! ## The tracking state of `child_message` -/

/-- After `msg_new_scratch`: `Trk` with `Γ` unchanged, the block `[m, m + 176)` below the entry
`scratch_ptr` and above the current one, memory changed only in it, the recorded fields `L`, word
locals `Lw`, the struct local `value`. -/
def CW (H : Hooks σ) (Γ0 : Gam) (s0 : State σ) (p0 : Ptrs) (m : BitVec 64) (ws : List (BitVec 64))
    (L : List (Nat × BitVec 64)) (Lw : List (MlS × BitVec 64)) (u : State σ) : Prop :=
  Trk guestC H Γ0 s0 p0 (fun _ => False) Γ0 u ∧ m.toNat % 8 = 0 ∧ m.toNat + 176 ≤ p0.sp ∧
  (∀ q, ptrsOf u = some q → q.sp ≤ m.toNat) ∧
  ModifiesOnly (fun a => m.toNat ≤ a.toNat ∧ a.toNat < m.toNat + 176) s0.memory u.memory ∧
  (∀ kx ∈ L, kx.1 < 176 ∧ kx.1 % 8 = 0 ∧ fld u.memory m kx.1 = kx.2) ∧
  (∀ xw ∈ Lw, u.locals.lookup xw.1 = some (.val (.word xw.2))) ∧
  u.locals.lookup (nm "value") = some (wv ws) ∧
  ∀ g, g ≠ gScratch → u.globals.lookup g = s0.globals.lookup g

section cw
variable {H : Hooks σ} {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {m : BitVec 64} {ws : List (BitVec 64)}
  {L : List (Nat × BitVec 64)} {Lw : List (MlS × BitVec 64)}

theorem m_off {k : Nat} (hm : m.toNat + 176 ≤ p0.sp) (hord : p0.Ordered) (hk : k < 176) :
    (m + BitVec.ofNat 64 k).toNat = m.toNat + k := by
  have : scratchEnd < 2 ^ 64 := by decide
  have h2 := hord.2.2.2.2.1
  rw [BitVec.toNat_add, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega : k < 2 ^ 64),
    Nat.mod_eq_of_lt (by omega)]

/-- The block is outside `Γ0` and unallocated at entry. -/
theorem cw_blk (h : CW H Γ0 s0 p0 m ws L Lw u) (hord : p0.Ordered) (hL0 : Layout guestC p0 Γ0)
    {a : BitVec 64} (h1 : m.toNat ≤ a.toNat) (h2 : a.toNat < m.toNat + 176) :
    ¬ InObj Γ0 a.toNat ∧ ¬ p0.Allocated a.toNat := by
  obtain ⟨hT, -, hm, hsp, -⟩ := h
  obtain ⟨q, hq, hmo, -, -, hG, -⟩ := hT
  obtain ⟨q', hq', hordq, -⟩ := hG
  rw [hq] at hq'
  cases hq'
  have hs := hsp q hq
  have hna : ¬ p0.Allocated a.toNat := by
    unfold Ptrs.Allocated
    unfold Ptrs.Ordered at hord hordq
    obtain ⟨m1, m2, m3⟩ := hmo
    have : heapEnd ≥ heapBase := by decide
    omega
  exact ⟨fun hi => hna (Helpers.allocated_of_inObj hL0 hi), hna⟩

theorem cw_congr (hH : HooksLawful guestC H) {u t : State σ} (h : CW H Γ0 s0 p0 m ws L Lw u)
    (hm : t.memory = u.memory) (hg : t.globals = u.globals) (hd : t.memaddrs = u.memaddrs)
    (hbe : t.be = u.be) (hl : t.locals = u.locals) : CW H Γ0 s0 p0 m ws L Lw t := by
  obtain ⟨hT, h1, h2, h3, h4, h5, h6, h7, h8⟩ := h
  refine ⟨trk_congr hH hT hm hg hd hbe, h1, h2, fun q hq => h3 q (by rw [← hq, ptrsOf_congr hg]),
    fun a ha => by rw [hm]; exact h4 a ha, fun kx hkx => ?_, fun xw hxw => by rw [hl]; exact h6 xw hxw,
    by rw [hl]; exact h7, fun g hg' => by rw [hg]; exact h8 g hg'⟩
  obtain ⟨a, b, c⟩ := h5 kx hkx
  exact ⟨a, b, by unfold fld rd; rw [hm]; exact c⟩

/-- A word store into the block, recorded. -/
theorem cw_upd (hH : HooksLawful guestC H) (hord : p0.Ordered) (hL0 : Layout guestC p0 Γ0)
    {u : State σ} (h : CW H Γ0 s0 p0 m ws L Lw u) {k : Nat} (hk : k < 176) (hk8 : k % 8 = 0)
    (hnd : k ∉ L.map Prod.fst) (x : BitVec 64) :
    CW H Γ0 s0 p0 m ws ((k, x) :: L) Lw { u with memory := upd u.memory (m + BitVec.ofNat 64 k) x } := by
  have hb := cw_blk h hord hL0 (a := m + BitVec.ofNat 64 k) (by rw [m_off h.2.2.1 hord hk]; omega)
    (by rw [m_off h.2.2.1 hord hk]; omega)
  obtain ⟨hT, h1, h2, h3, h4, h5, h6, h7, h8⟩ := h
  have hmk := m_off h2 hord hk
  refine ⟨trk_tmp hH hT hb.1 hb.2 x, h1, h2, h3, fun a ha => ?_, fun kx hkx => ?_, h6, h7, h8⟩
  · show upd u.memory _ x a = s0.memory a
    rw [upd_ne _ _ (fun he => ha ⟨by rw [he, hmk]; omega, by rw [he, hmk]; omega⟩)]
    exact h4 a ha
  · rcases List.mem_cons.mp hkx with rfl | hkx
    · exact ⟨hk, hk8, fld_upd_eq _⟩
    · obtain ⟨a, b, c⟩ := h5 kx hkx
      refine ⟨a, b, ?_⟩
      rw [fld_upd_ne _ ?_]
      · exact c
      · intro he
        have := congrArg BitVec.toNat he
        rw [m_off h2 hord a, hmk] at this
        exact hnd (by rw [show k = kx.1 by omega]; exact List.mem_map_of_mem hkx)

/-- **A word store into the block** (a `HoareG` rule), recorded. -/
theorem cw_st (hH : HooksLawful guestC H) (hord : p0.Ordered) (hL0 : Layout guestC p0 Γ0)
    {k : Nat} {ve : ExpHOL 64} {c : ProgHOL 64} {Q : Option (PanSemResultExact 64) → State σ → Prop}
    (hk : k < 176) (hk8 : k % 8 = 0) (hnd : k ∉ L.map Prod.fst) (hmL : (nm "m", m) ∈ Lw)
    {R : BitVec 64 → Prop}
    (hv : ∀ u, CW H Γ0 s0 p0 m ws L Lw u → ∀ v, ev u ve = some v → ∃ x, v = .val (.word x) ∧ R x)
    (hc : ∀ x, R x → HoareG σ X (CW H Γ0 s0 p0 m ws ((k, x) :: L) Lw) c Q) :
    HoareG σ X (CW H Γ0 s0 p0 m ws L Lw) (.seq (stL "m" k ve) c) Q := by
  refine hoareG_seq (R := fun r u => r = none ∧ ∃ x, R x ∧ CW H Γ0 s0 p0 m ws ((k, x) :: L) Lw u)
    ?_ (fun r t _ hr _ h => absurd h.1 hr) ?_
  · refine hoareG_stL fun u _ hu B v hB hv' => ?_
    rw [hu.2.2.2.2.2.2.1 _ hmL] at hB
    simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hB
    subst hB
    obtain ⟨x, rfl, hRx⟩ := hv u hu v hv'
    exact ⟨x, rfl, fun _ => ⟨rfl, x, hRx, cw_upd hH hord hL0 hu hk hk8 hnd x⟩⟩
  · intro s hs ⟨_, x, hRx, hN⟩ hg
    exact hc x hRx s hs hN hg

end cw

theorem flatten_wv_length (ws : List (BitVec 64)) : (flattenHOL (wv ws)).length = ws.length := by
  induction ws with
  | nil => simp [wv, flattenHOL]
  | cons w ws ih =>
      simp only [wv, List.map_cons] at ih ⊢
      simp only [flattenHOL] at ih ⊢
      simp_all [flattenHOL]

section cw2
variable {H : Hooks σ} {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {m : BitVec 64} {ws : List (BitVec 64)}
  {L : List (Nat × BitVec 64)} {Lw : List (MlS × BitVec 64)}

/-- **The `value` store** (four words at `m + 56`), not recorded. -/
theorem cw_stV (hH : HooksLawful guestC H) (hord : p0.Ordered) (hL0 : Layout guestC p0 Γ0)
    {c : ProgHOL 64} {Q : Option (PanSemResultExact 64) → State σ → Prop}
    (hL : ∀ kx ∈ L, kx.1 + 8 ≤ 56) (hmL : (nm "m", m) ∈ Lw) (hws : ws.length = 4)
    (hc : HoareG σ X (CW H Γ0 s0 p0 m ws L Lw) c Q) :
    HoareG σ X (CW H Γ0 s0 p0 m ws L Lw) (.seq (stL "m" 56 (lv (nm "value"))) c) Q := by
  refine hoareG_seq (R := fun r u => r = none ∧ CW H Γ0 s0 p0 m ws L Lw u)
    ?_ (fun r t _ hr _ h => absurd h.1 hr) (hoareG_pre hc fun _ _ h => h.2)
  refine hoareG_store fun u _ hu w v mem hw hv hmem => ⟨rfl, ?_⟩
  obtain ⟨y, z, hy, hz, rfl⟩ := ev_add2_inv hw
  have hlm : u.locals.lookup (nm "m") = some (.val (.word m)) := hu.2.2.2.2.2.2.1 _ hmL
  rw [ev_lv, hlm] at hy
  rw [ev_cw] at hz
  cases hy; cases hz
  rw [ev_lv, hu.2.2.2.2.2.2.2.1] at hv
  cases hv
  obtain ⟨hmod, -⟩ := Helpers.stores_mod hmem
  rw [flatten_wv_length, hws] at hmod
  have h2 := hu.2.2.1
  have hcell : ∀ a : BitVec 64, (∃ j, j < 4 ∧ a = m + BitVec.ofNat 64 56 + BitVec.ofNat 64 (8 * j)) →
      ∃ j, j < 4 ∧ (a.toNat = m.toNat + 56 + 8 * j) := by
    rintro a ⟨j, hj, rfl⟩
    refine ⟨j, hj, ?_⟩
    rw [BitVec.add_assoc, BitVec.ofNat_add_ofNat, m_off h2 hord (by omega)]
    omega
  have hB : ∀ a, (∃ j, j < 4 ∧ a = m + BitVec.ofNat 64 56 + BitVec.ofNat 64 (8 * j)) →
      ¬ InObj Γ0 a.toNat ∧ ¬ p0.Allocated a.toNat := by
    intro a ha
    obtain ⟨j, hj, he⟩ := hcell a ha
    exact cw_blk hu hord hL0 (by omega) (by omega)
  obtain ⟨hT, h1, -, h3, h4, h5, h6, h7, h8⟩ := hu
  refine ⟨trk_blkmod hH hT hB hmod rfl rfl rfl, h1, h2, h3, fun a ha => ?_, fun kx hkx => ?_, h6, h7,
    h8⟩
  · show mem a = s0.memory a
    rw [hmod a ?_]
    · exact h4 a ha
    · intro hc'
      obtain ⟨j, hj, he⟩ := hcell a hc'
      exact ha ⟨by omega, by omega⟩
  · obtain ⟨a, b, c⟩ := h5 kx hkx
    refine ⟨a, b, ?_⟩
    have hkk := hL kx hkx
    show rd mem (m + BitVec.ofNat 64 kx.1) = kx.2
    unfold rd
    rw [hmod _ ?_]
    · exact c
    · intro hc'
      obtain ⟨j, hj, he⟩ := hcell _ hc'
      rw [m_off h2 hord a] at he
      omega

end cw2

/-! ## The arguments -/

/-- The callee locals bind each parameter to its argument, of the parameter's shape. -/
theorem lookupCode_kS {code : MlS → Option (List (MlS × ShapeHOL) × ProgHOL 64 × ShapeHOL)}
    {f : MlS} {vs : List (ValueHOL 64)} {b : ProgHOL 64} {c : HolFiniteMapExact MlS (ValueHOL 64)}
    {r : ShapeHOL} (h : PanSemStateFiniteExact.lookupCodeHOLFinite code f vs = some (b, c, r)) :
    ∃ ps : List (MlS × ShapeHOL), code f = some (ps, b, r) ∧ ps.length = vs.length ∧
      ∀ (k : Nat) (p : MlS × ShapeHOL) (v : ValueHOL 64), ps[k]? = some p → vs[k]? = some v →
        c.lookup p.1 = some v ∧ shapeEqHOL p.2 (shapeOfHOLExact v) = true := by
  obtain ⟨ps, hps, hk⟩ := lookupCode_k h
  refine ⟨ps, hps, ?_, fun k p v hp hv => ⟨hk k p v hp hv, ?_⟩⟩
  all_goals
    unfold PanSemStateFiniteExact.lookupCodeHOLFinite at h
    split at h
    · simp at h
    · rename_i body cl rs hx
      unfold lookupCodeHOLExact at hx
      rw [hps] at hx
      simp only at hx
      split at hx
      · rename_i hcond
        obtain ⟨-, hlen, hall⟩ := hcond
        first
          | exact hlen
          | have hz : (ps.zip vs)[k]? = some (p, v) := by
              rw [List.getElem?_zip_eq_some]; exact ⟨hp, hv⟩
            exact List.all_eq_true.mp hall (p, v) (List.mem_of_getElem? hz)
      · simp at hx

/-- The 14 arguments of `child_message`: 13 words and the 4-word `value`. -/
def cmLw (a0 a1 a2 a3 a4 a6 a7 a8 a9 a10 a11 a12 a13 : BitVec 64) : List (MlS × BitVec 64) :=
  [(nm "caller", a0), (nm "target", a1), (nm "current_target", a2), (nm "gas", a3),
    (nm "reservoir", a4), (nm "data", a6), (nm "data_n", a7), (nm "code_address", a8),
    (nm "code", a9), (nm "code_n", a10), (nm "transfer", a11), (nm "is_static", a12),
    (nm "disable_pre", a13)]

def w64 (a : BitVec 64) : ValueHOL 64 := .val (.word a)

theorem cm_args {vs : List (ValueHOL 64)} {body : ProgHOL 64}
    {callee : HolFiniteMapExact MlS (ValueHOL 64)} {rs : ShapeHOL}
    (hl : PanSemStateFiniteExact.lookupCodeHOLFinite guestCode (nm "child_message") vs =
      some (body, callee, rs)) :
    body = cmBody ∧ ∃ (a0 a1 a2 a3 a4 : BitVec 64) (ws : List (BitVec 64))
      (a6 a7 a8 a9 a10 a11 a12 a13 : BitVec 64), ws.length = 4 ∧
      vs = [w64 a0, w64 a1, w64 a2, w64 a3, w64 a4, wv ws, w64 a6, w64 a7, w64 a8, w64 a9, w64 a10,
        w64 a11, w64 a12, w64 a13] ∧
      (∀ xw ∈ cmLw a0 a1 a2 a3 a4 a6 a7 a8 a9 a10 a11 a12 a13,
        callee.lookup xw.1 = some (.val (.word xw.2))) ∧
      callee.lookup (nm "value") = some (wv ws) := by
  obtain ⟨ps, hps, hlen, hk⟩ := lookupCode_kS hl
  rw [code_cm, Option.some.injEq] at hps
  simp only [Prod.mk.injEq] at hps
  obtain ⟨rfl, rfl, -⟩ := hps
  refine ⟨rfl, ?_⟩
  have hl14 : vs.length = 14 := by rw [← hlen]; rfl
  match vs, hl14 with
  | [v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13], _ =>
  have one : ∀ (i : Nat) (x : MlS) (v : ValueHOL 64), cmParams[i]? = some (x, .one) →
      [v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13][i]? = some v →
      ∃ a, v = w64 a ∧ callee.lookup x = some (.val (.word a)) := by
    intro i x v hp hv
    obtain ⟨hc, hs⟩ := hk i _ v hp hv
    obtain ⟨a, rfl⟩ := val_of_shapeEq_one hs
    exact ⟨a, rfl, hc⟩
  obtain ⟨a0, rfl, h0⟩ := one 0 _ _ rfl rfl
  obtain ⟨a1, rfl, h1⟩ := one 1 _ _ rfl rfl
  obtain ⟨a2, rfl, h2⟩ := one 2 _ _ rfl rfl
  obtain ⟨a3, rfl, h3⟩ := one 3 _ _ rfl rfl
  obtain ⟨a4, rfl, h4⟩ := one 4 _ _ rfl rfl
  obtain ⟨a6, rfl, h6⟩ := one 6 _ _ rfl rfl
  obtain ⟨a7, rfl, h7⟩ := one 7 _ _ rfl rfl
  obtain ⟨a8, rfl, h8⟩ := one 8 _ _ rfl rfl
  obtain ⟨a9, rfl, h9⟩ := one 9 _ _ rfl rfl
  obtain ⟨a10, rfl, h10⟩ := one 10 _ _ rfl rfl
  obtain ⟨a11, rfl, h11⟩ := one 11 _ _ rfl rfl
  obtain ⟨a12, rfl, h12⟩ := one 12 _ _ rfl rfl
  obtain ⟨a13, rfl, h13⟩ := one 13 _ _ rfl rfl
  obtain ⟨hc5, hs5⟩ := hk 5 _ v5 rfl rfl
  have hs5' : shapeOfHOLExact v5 = shK 4 := ((shapeEqHOL_eq_true _ _).mp hs5).symm
  obtain ⟨ws, hws, rfl⟩ := eq_wv_of_shape hs5'
  refine ⟨a0, a1, a2, a3, a4, ws, a6, a7, a8, a9, a10, a11, a12, a13, hws, rfl, ?_, hc5⟩
  intro xw hxw
  simp only [cmLw, List.mem_cons, List.not_mem_nil, or_false] at hxw
  rcases hxw with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4
  · exact h6
  · exact h7
  · exact h8
  · exact h9
  · exact h10
  · exact h11
  · exact h12
  · exact h13

/-! ## The post and the final step -/

/-- **What a return of `child_message` built**: the message `⟨m, tMSGs, 176⟩` joined `Γ` (in
fresh scratch below the entry `scratch_ptr`), only its block and `scratch_ptr` changed, and its
CALLER (frames8), CURRENT_TARGET, GAS and CODE_N fields are the arguments. -/
def CMQ (vs : List (ValueHOL 64)) (s : State σ) (Γ : Gam) (r : PanSemResultExact 64) (t : State σ)
    (Γ' : Gam) : Prop :=
  ∀ v, r = .returned v → ∃ M : BitVec 64, v = .val (.word M) ∧ Γ' = Γ ++ [⟨M, tMSGs, 176⟩] ∧
    (∀ q q', ptrsOf s = some q → ptrsOf t = some q' → q'.sp ≤ M.toNat ∧ M.toNat + 176 ≤ q.sp) ∧
    ModifiesOnly (fun a => M.toNat ≤ a.toNat ∧ a.toNat < M.toNat + 176) s.memory t.memory ∧
    (∀ g, g ≠ gScratch → t.globals.lookup g = s.globals.lookup g) ∧
    (∀ x, vs[0]? = some (.val (.word x)) → fld t.memory M 16 = x) ∧
    (∀ x, vs[2]? = some (.val (.word x)) → fld t.memory M 32 = x) ∧
    (∀ x, vs[3]? = some (.val (.word x)) → fld t.memory M 40 = x) ∧
    (∀ x, vs[10]? = some (.val (.word x)) → fld t.memory M 120 = x)

theorem msgs_slot (k : Nat) (hk : k < 22) :
    k = 1 ∨ k = 19 ∨ k = 20 ∨ k = 12 ∨ (guestC.ty tMSGs).slot k = .scalar ∨
      (guestC.ty tMSGs).slot k = .prot := by
  interval_cases k <;> decide

/-- The message object joins `Γ`; the summary core and the post. -/
theorem cw_final {H : Hooks σ} (hH : HooksLawful guestC H) (hM : HooksMono guestC H)
    (hMH : ∀ Γ (s : State σ) o, o.ty = tMSGs → H.wf Γ s o) {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs}
    (hp0 : ptrsOf s0 = some p0) (hord : p0.Ordered) (hL0 : Layout guestC p0 Γ0) {m : BitVec 64}
    {ws : List (BitVec 64)} {L : List (Nat × BitVec 64)} {Lw : List (MlS × BitVec 64)}
    {u : State σ} (h : CW H Γ0 s0 p0 m ws L Lw u) {x8 x1 x2 a0 a2 a3 a10 : BitVec 64}
    (h8 : (8, x8) ∈ L) (hx8 : Fits Γ0 (.ptr tTE) x8) (h1 : (152, x1) ∈ L) (hx1 : Fits Γ0 (.ptr tHTh20) x1) (h2 : (160, x2) ∈ L)
    (hx2 : Fits Γ0 (.ptr tHTh52) x2) (h32 : (32, a2) ∈ L) (h40 : (40, a3) ∈ L)
    (h120 : (120, a10) ∈ L) (h16 : (16, a0) ∈ L) {a7 : BitVec 64} (h96 : (96, a7) ∈ L)
    (ha7 : a7.toNat < 2 ^ 32) {vs : List (ValueHOL 64)}
    (hv0 : vs[0]? = some (.val (.word a0))) (hv2 : vs[2]? = some (.val (.word a2)))
    (hv3 : vs[3]? = some (.val (.word a3))) (hv10 : vs[10]? = some (.val (.word a10))) :
    ∃ Γ' p', SumCore guestC H (sgA 14 []) (fun a => ProtCell guestC Γ0 a ∧ False) Γ0 s0 vs
      (.returned (.val (.word m))) u Γ' p0 p' ∧
      CMQ vs s0 Γ0 (.returned (.val (.word m))) u Γ' := by
  have hblk := fun a => @cw_blk σ H Γ0 s0 p0 m ws L Lw u h hord hL0 a
  obtain ⟨hT, hm8, hmsp, hsp, hmod, hL, -, -, hgl⟩ := h
  obtain ⟨q, hq, hmo, -, -, hGq, -⟩ := id hT
  obtain ⟨q', hq', hordq, -⟩ := hGq
  rw [hq] at hq'; cases hq'
  have hs := hsp q hq
  have hlt : m.toNat + 176 ≤ scratchEnd := by have := hord.2.2.2.2.1; omega
  have hna : ∀ b, m.toNat ≤ b → b < m.toNat + 176 → ¬ p0.Allocated b := by
    intro b hb1 hb2
    have hb : b < 2 ^ 64 := by unfold scratchEnd at hlt; omega
    have := (hblk (BitVec.ofNat 64 b) (by rw [toNat_ofNat_lt hb]; exact hb1)
      (by rw [toNat_ofNat_lt hb]; exact hb2)).2
    rwa [toNat_ofNat_lt hb] at this
  have hfld : ∀ kx ∈ L, fld u.memory m kx.1 = kx.2 := fun kx hkx => (hL kx hkx).2.2
  have hT' : Trk guestC H Γ0 s0 p0 (fun _ => False) (Γ0 ++ [⟨m, tMSGs, 176⟩]) u := by
    refine trk_addObjL (x := ⟨m, tMSGs, 176⟩) hM hT hq hm8 (by show (176 : Nat) % 8 = 0; decide)
      (by show 0 < 176; decide) (le_refl _) (show q.sp ≤ m.toNat ∧ m.toNat + 176 ≤ scratchEnd from
        ⟨hs, hlt⟩) (fun a h1' h2' => fresh_of_live hord (rg := .scratch) ⟨hs, hlt⟩ hna h1' h2')
      (fun a ha => (hblk a ha.1 ha.2).1) ?_ (show guestC.tags.lookup tMSGs = none by decide)
      (fun _ _ => hMH _ _ _ rfl)
    intro k hk
    have hk22 : k < 22 := by unfold Obj.HasSlot at hk; simp only at hk; omega
    have hc : (⟨m, tMSGs, 176⟩ : Obj).cell k = m + BitVec.ofNat 64 (8 * k) := rfl
    rcases msgs_slot k hk22 with rfl | rfl | rfl | rfl | hsl | hsl
    · have e8 : rd u.memory ((⟨m, tMSGs, 176⟩ : Obj).cell 1) = x8 := hfld _ h8
      show Fits _ (.ptr tTE) _
      rw [e8]; exact fits_append hx8
    · have e1 : rd u.memory ((⟨m, tMSGs, 176⟩ : Obj).cell 19) = x1 := hfld _ h1
      show Fits _ (.ptr tHTh20) _
      rw [e1]; exact fits_append hx1
    · have e2 : rd u.memory ((⟨m, tMSGs, 176⟩ : Obj).cell 20) = x2 := hfld _ h2
      show Fits _ (.ptr tHTh52) _
      rw [e2]; exact fits_append hx2
    · have e96 : rd u.memory ((⟨m, tMSGs, 176⟩ : Obj).cell 12) = a7 := hfld _ h96
      show Fits _ (.bnd) _
      rw [e96]; exact ha7
    · show Fits _ ((guestC.ty tMSGs).slot k) _
      rw [hsl]; trivial
    · show Fits _ ((guestC.ty tMSGs).slot k) _
      rw [hsl]; trivial
  obtain ⟨p', hc⟩ := trk_sumCore (sg := sgA 14 []) (vs := vs) (r := .returned (.val (.word m)))
    (PWs := fun a => ProtCell guestC Γ0 a ∧ False) hT' hp0 (fun a h => h.elim)
    (fun h => by simp [sgA] at h) (fun _ _ _ _ i rt w hrt => by simp [sgA] at hrt)
  refine ⟨Γ0 ++ [⟨m, tMSGs, 176⟩], p', hc, fun v hv => ⟨m, (by cases hv; rfl), rfl, ?_, hmod, hgl, ?_, ?_,
    ?_, ?_⟩⟩
  · intro q1 q1' hq1 hq1'
    rw [hp0] at hq1; cases hq1
    rw [hq] at hq1'; cases hq1'
    exact ⟨hs, hmsp⟩
  · intro y hy; rw [hv0] at hy; cases hy; exact hfld _ h16
  · intro y hy; rw [hv2] at hy; cases hy; exact hfld _ h32
  · intro y hy; rw [hv3] at hy; cases hy; exact hfld _ h40
  · intro y hy; rw [hv10] at hy; cases hy; exact hfld _ h120

/-! ## The walk -/

section walk
variable {H : Hooks σ} {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {m : BitVec 64} {ws : List (BitVec 64)}
  {L : List (Nat × BitVec 64)} {Lw : List (MlS × BitVec 64)}

theorem cw_wk {u : State σ} (h : CW H Γ0 s0 p0 m ws L ((x, w) :: Lw) u) : CW H Γ0 s0 p0 m ws L Lw u :=
  let ⟨a, b, c, d, e, f, g, i, j⟩ := h
  ⟨a, b, c, d, e, f, fun xw hxw => g xw (List.mem_cons_of_mem _ hxw), i, j⟩

/-- A new word local. -/
theorem cw_setVar (hH : HooksLawful guestC H) {u : State σ} (h : CW H Γ0 s0 p0 m ws L Lw u)
    {x : MlS} (hx : ∀ xw ∈ Lw, xw.1 ≠ x) (hxv : nm "value" ≠ x) (w : BitVec 64) :
    CW H Γ0 s0 p0 m ws L ((x, w) :: Lw) (setVarHOLFinite x (.val (.word w)) u) := by
  obtain ⟨a, b, c, d, e, f, g, i, j⟩ := h
  refine ⟨trk_congr hH a rfl rfl rfl rfl, b, c, fun q hq => d q ((ptrsOf_congr rfl).symm.trans hq), e,
    f, fun xw hxw => ?_, ?_, j⟩
  · rcases List.mem_cons.mp hxw with rfl | hxw
    · exact lk_set_self _ _ _
    · rw [lk_set_ne _ _ (hx xw hxw).symm]; exact g xw hxw
  · rw [lk_set_ne _ _ hxv.symm]; exact i

theorem cw_lw {u : State σ} (h : CW H Γ0 s0 p0 m ws L Lw u) {x : MlS} {w : BitVec 64}
    (hx : (x, w) ∈ Lw) : u.locals.lookup x = some (.val (.word w)) := h.2.2.2.2.2.2.1 _ hx

theorem cw_lv {u : State σ} (h : CW H Γ0 s0 p0 m ws L Lw u) {x : MlS} {w : BitVec 64}
    (hx : (x, w) ∈ Lw) {v : ValueHOL 64} (hv : ev u (lv x) = some v) : v = .val (.word w) := by
  rw [ev_lv, cw_lw h hx] at hv; exact (Option.some.inj hv).symm

end walk

/-- The summary core and the post, ignoring locals. -/
def CMP (H : Hooks σ) (vs : List (ValueHOL 64)) (s0 : State σ) (Γ : Gam) (p0 : Ptrs)
    (ro : Option (PanSemResultExact 64)) (t : State σ) : Prop :=
  ∀ v, ro = some (.returned v) → ∃ Γ' p', SumCore guestC H (sgA 14 [])
    (fun a => ProtCell guestC Γ a ∧ False) Γ s0 vs (.returned v) t Γ' p0 p' ∧
    CMQ vs s0 Γ (.returned v) t Γ'

theorem cmp_locals {H : Hooks σ} (hH : HooksLawful guestC H) {vs : List (ValueHOL 64)}
    {s0 : State σ} {Γ : Gam} {p0 : Ptrs} {ro : Option (PanSemResultExact 64)} {t : State σ}
    (h : CMP H vs s0 Γ p0 ro t) (l : Locs) : CMP H vs s0 Γ p0 ro { t with locals := l } := by
  intro v hv
  obtain ⟨Γ', p', ⟨c1, c2, c3, c4, c5, c6, c7, c8, c9, c10⟩, hq⟩ := h v hv
  refine ⟨Γ', p', ⟨c1, (ptrsOf_congr rfl).trans c2, c3, c4, c5, (G_locFree hH t l t.clock).mpr c6,
    c7, c8, c9, c10⟩, fun v' hv' => ?_⟩
  obtain ⟨M, a, b, c, d, e, f, g, i⟩ := hq v' hv'
  exact ⟨M, a, b, fun q q' hq hq' => c q q' hq ((ptrsOf_congr rfl).symm.trans hq'), d, e, f, g, i⟩


theorem cmLw_names {a0 a1 a2 a3 a4 a6 a7 a8 a9 a10 a11 a12 a13 : BitVec 64} :
    ∀ xw ∈ cmLw a0 a1 a2 a3 a4 a6 a7 a8 a9 a10 a11 a12 a13,
      xw.1 ≠ nm "m" ∧ xw.1 ≠ nm "pm" ∧ xw.1 ≠ nm "stat" ∧ xw.1 ≠ nm "value" := by
  intro xw hxw
  simp only [cmLw, List.mem_cons, List.not_mem_nil, or_false] at hxw
  rcases hxw with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;>
    (dsimp only; decide)

theorem ldw {u : State σ} {Lw : List (MlS × BitVec 64)} {PM : BitVec 64}
    (h : ∀ xw ∈ Lw, u.locals.lookup xw.1 = some (.val (.word xw.2))) (hpm : (nm "pm", PM) ∈ Lw)
    {k : Nat} {v : ValueHOL 64} (hv : ev u (ldL "pm" k) = some v) :
    ∃ x, v = .val (.word x) ∧ True := ⟨_, ev_lLoad_eq (h _ hpm) hv, trivial⟩

theorem ldw_eq {u : State σ} {Lw : List (MlS × BitVec 64)} {PM : BitVec 64}
    (h : ∀ xw ∈ Lw, u.locals.lookup xw.1 = some (.val (.word xw.2))) (hpm : (nm "pm", PM) ∈ Lw)
    {k : Nat} {v : ValueHOL 64} (hv : ev u (ldL "pm" k) = some v) :
    ∃ x, v = .val (.word x) ∧ x = fld u.memory PM k := ⟨_, ev_lLoad_eq (h _ hpm) hv, rfl⟩

/-- **`child_message`'s precondition**: the running EV record, its message a `Γ` message object, and
(eon) the `data_n` argument (`vs[7]`) is below `2^32` (`MSG_DATA_N` is a `bnd` slot). -/
def CMPre (vs : List (ValueHOL 64)) (s : State σ) (Γ : Gam) : Prop :=
  (∃ e, EvRun tEV Γ s e ∧
    ∃ P ∈ Γ, P.base = fld s.memory e.base 112 ∧ (P.ty = tMSGh ∨ P.ty = tMSGs) ∧ 16 ≤ P.size) ∧
  ∃ w : BitVec 64, vs[7]? = some (.val (.word w)) ∧ w.toNat < 2 ^ 32

/-- **`child_message`'s summary**: an exact-effect constructor. -/
theorem cm_sumSpec {H : Hooks σ} (hF : FoldOK σ X guestC H) (hM : HooksMono guestC H)
    (hMH : ∀ Γ (s : State σ) o, o.ty = tMSGs → H.wf Γ s o) :
    SumSpecA σ X guestC H (nm "child_message") (sgA 14 []) CMPre
      (fun _ _ _ _ => False) CMQ := by
  have hH := hF.hH
  refine sumSpecA_of_returns (noExc_cm hF.hX) ?_
  intro vs body callee rs hl s0 hs0 hloc r hr v hv Γ hG _ ⟨⟨e, he, Pm, hPm, hPmb, hPmt, hPms⟩, wd, hwd, hwdb⟩
  have hl' := hl
  rw [hF.hX] at hl'
  obtain ⟨rfl, a0, a1, a2, a3, a4, ws, a6, a7, a8, a9, a10, a11, a12, a13, hws, hvsE, hlw, hval⟩ :=
    cm_args hl'
  obtain ⟨p0, hp0, hord0, hL0, -⟩ := id hG
  have hevs : gword s0 nmEv = some e.base := he.2.2
  have hesz : 280 ≤ e.size := by
    have := (hL0.1 e he.1).2.2.2.1; rw [he.2.1] at this; exact this
  set Lc := cmLw a0 a1 a2 a3 a4 a6 a7 a8 a9 a10 a11 a12 a13 with hLc
  have H0 : HoareG σ X (fun u => u = s0) cmBody (CMP H vs s0 Γ p0) := by
    refine hoareG_dec fun s _ hs v1 hv1 _ => ?_
    subst s
    obtain ⟨PM, rfl⟩ : ∃ PM, v1 = .val (.word PM) := by
      obtain ⟨w, -, -, rfl⟩ := ev_load_one hv1
      exact ⟨rd s0.memory w, by rw [mem_rd s0.memory w]⟩
    have hPMv : PM = fld s0.memory e.base 112 := by
      have := (ev_gLoad_eq hevs hv1).1
      simpa using this
    refine hoareG_conseq (Q := CMP H vs s0 Γ p0) ?_ (fun _ _ h => h)
      (fun r t _ _ h => cmp_locals hH h _)
    set u1 := setVarHOLFinite (nm "pm") (.val (.word PM)) s0 with hu1
    refine hoareG_decCall (FunSpec.and (mns_spec hF.hX hF.hal) (funSpec_dom (σ := σ) (X := X) _)) ?_
      (fun s _ _ vs' _ callee' r' st _ _ habn v' hv' => absurd (Option.some.inj hv')
        (not_returned_of_abn habn v'))
    intro s _ hs vs' hvs callee' v2 st ⟨hMns, hd2, hbe2⟩ _ _
    subst s
    rw [show evs u1 ([] : List (ExpHOL 64)) = some [] from evs_nil] at hvs
    cases hvs
    have hpe : ptrsOf (callEntryStateHOLFinite u1 callee') = some p0 := (ptrsOf_congr rfl).trans hp0
    obtain ⟨M, p1, rfl, hp1, hord1, hmo1, hM8, hsp1, hMe, hna1, hmod1, hgl1, hd1, hbe1⟩ :=
      hMns (by simp [Good]) _ rfl p0 hpe hord0
    refine hoareG_conseq (Q := CMP H vs s0 Γ p0) ?_ (fun _ _ h => h)
      (fun r t _ _ h => cmp_locals hH h _)
    set u2 := setVarHOLFinite (nm "m") (.val (.word M)) { st with locals := u1.locals } with hu2
    have hT1 : Trk guestC H Γ s0 p0 (fun _ => False) Γ u1 :=
      trk_congr hH (trk_refl hG hp0) rfl rfl rfl rfl
    have hTw : Trk guestC H Γ s0 p0 (fun _ => False) Γ
        { st with memory := (callEntryStateHOLFinite u1 callee').memory } :=
      trk_alloc hH ⟨fun g hg => (hF.hAC g hg).1, fun g hg => (hF.hAC g hg).2⟩ hT1 (t' := callEntryStateHOLFinite u1 callee') (rg := .scratch) rfl rfl hpe
        rfl hgl1 ((ptrsOf_congr rfl).trans hp1) hord1 hmo1 hd1 hbe1
    have hTs : Trk guestC H Γ s0 p0 (fun _ => False) Γ st :=
      trk_blkmod hH hTw (B := fun a => M.toNat ≤ a.toNat ∧ a.toNat < M.toNat + 176)
        (fun a ha => ⟨fun hi => hna1 _ ha.1 ha.2 (Helpers.allocated_of_inObj hL0 hi),
          hna1 _ ha.1 ha.2⟩) hmod1 rfl rfl rfl
    have hMsp : M.toNat + 176 ≤ p0.sp := by
      have h175 := hna1 (M.toNat + 175) (by omega) (by omega)
      unfold Ptrs.Allocated at h175
      unfold Ptrs.Ordered at hord0 hord1
      obtain ⟨m1, m2, m3⟩ := hmo1
      have : heapEnd ≥ heapBase := by decide
      omega
    let Lw0 : List (MlS × BitVec 64) := (nm "m", M) :: (nm "pm", PM) :: Lc
    have hCW : CW H Γ s0 p0 M ws [] Lw0 u2 := by
      refine ⟨trk_congr hH hTs rfl rfl rfl rfl, hM8, hMsp, fun q hq => ?_, hmod1, (fun _ h => by
        cases h), fun xw hxw => ?_, ?_, fun g hg => ?_⟩
      · rw [show ptrsOf u2 = ptrsOf st from ptrsOf_congr rfl, hp1] at hq
        cases hq; exact hsp1
      · rcases List.mem_cons.mp hxw with rfl | hxw
        · exact lk_set_self _ _ _
        rcases List.mem_cons.mp hxw with rfl | hxw
        · rw [hu2, lk_set_ne _ _ (show nm "m" ≠ nm "pm" by decide)]
          show u1.locals.lookup _ = _
          rw [hu1]; exact lk_set_self _ _ _
        · obtain ⟨n1, n2, -, -⟩ := cmLw_names xw hxw
          rw [hu2, lk_set_ne _ _ n1.symm]
          show u1.locals.lookup _ = _
          rw [hu1, lk_set_ne _ _ n2.symm, hloc]
          exact hlw xw hxw
      · rw [hu2, lk_set_ne _ _ (by decide)]
        show u1.locals.lookup _ = _
        rw [hu1, lk_set_ne _ _ (by decide), hloc]
        exact hval
      · show st.globals.lookup g = _
        rw [hgl1 g hg]; rfl
    refine hoareG_pre (P := CW H Γ s0 p0 M ws [] Lw0) ?_ (fun t _ ht => ht ▸ hCW)
    have hm0 : (nm "m", M) ∈ Lw0 := List.mem_cons_self
    have hpm0 : (nm "pm", PM) ∈ Lw0 := List.mem_cons_of_mem _ List.mem_cons_self
    have hLc0 : ∀ xw ∈ Lc, xw ∈ Lw0 := fun xw h => List.mem_cons_of_mem _ (List.mem_cons_of_mem _ h)
    have lvw : ∀ {L : List (Nat × BitVec 64)} {Lw : List (MlS × BitVec 64)} {x : MlS} {a : BitVec 64},
        (x, a) ∈ Lw → ∀ u, CW H Γ s0 p0 M ws L Lw u → ∀ v, ev u (lv x) = some v →
          ∃ y, v = .val (.word y) ∧ y = a :=
      fun hx u hu v hv => ⟨_, cw_lv hu hx hv, rfl⟩
    have lvT : ∀ {L : List (Nat × BitVec 64)} {Lw : List (MlS × BitVec 64)} {x : MlS} {a : BitVec 64},
        (x, a) ∈ Lw → ∀ u, CW H Γ s0 p0 M ws L Lw u → ∀ v, ev u (lv x) = some v →
          ∃ y, v = .val (.word y) ∧ True :=
      fun hx u hu v hv => ⟨_, cw_lv hu hx hv, trivial⟩
    have ldT : ∀ {L : List (Nat × BitVec 64)} {k : Nat}, ∀ u, CW H Γ s0 p0 M ws L Lw0 u →
        ∀ v, ev u (ldL "pm" k) = some v → ∃ y, v = .val (.word y) ∧ True :=
      fun u hu v hv => ldw hu.2.2.2.2.2.2.1 hpm0 hv
    have mLc : ∀ {x : MlS} {a : BitVec 64}, (x, a) ∈ Lc → (x, a) ∈ Lw0 := fun h => hLc0 _ h
    unfold cmStores
    refine cw_st hH hord0 hL0 (k := 0) (by decide) (by decide) (by simp) hm0 ldT fun x0 _ => ?_
    have hfitPm : ∀ {L : List (Nat × BitVec 64)} (u : State σ), CW H Γ s0 p0 M ws L Lw0 u →
        Fits Γ (.ptr tTE) (rd u.memory (Pm.cell 1)) := by
      intro L u hu
      obtain ⟨_, _, _, _, hFl, _⟩ := trk_G hu.1
      have := hFl Pm hPm 1 (by unfold Obj.HasSlot; omega)
      rcases hPmt with h | h <;> rw [h] at this <;> exact this
    have ldTE : ∀ {L : List (Nat × BitVec 64)}, ∀ u, CW H Γ s0 p0 M ws L Lw0 u →
        ∀ v, ev u (ldL "pm" 8) = some v → ∃ y, v = .val (.word y) ∧ Fits Γ (.ptr tTE) y := by
      intro L u hu v hv
      obtain ⟨y, rfl, hy⟩ := ldw_eq hu.2.2.2.2.2.2.1 hpm0 hv
      refine ⟨y, rfl, ?_⟩
      have hc : Pm.cell 1 = PM + BitVec.ofNat 64 8 := by
        unfold Obj.cell; rw [hPmb, ← hPMv]
      have hf := hfitPm u hu
      rw [hc] at hf
      rw [hy]; exact hf
    refine cw_st hH hord0 hL0 (k := 8) (by decide) (by decide) (by simp) hm0
      (R := Fits Γ (.ptr tTE)) ldTE fun x8 hx8 => ?_
    refine cw_st hH hord0 hL0 (k := 16) (by decide) (by decide) (by simp) hm0
      (lvw (mLc (x := nm "caller") (a := a0) (by simp [hLc, cmLw]))) fun x16 h16 => ?_
    subst x16
    refine cw_st hH hord0 hL0 (k := 24) (by decide) (by decide) (by simp) hm0
      (lvT (mLc (x := nm "target") (a := a1) (by simp [hLc, cmLw]))) fun x24 _ => ?_
    refine cw_st hH hord0 hL0 (k := 32) (by decide) (by decide) (by simp) hm0
      (lvw (mLc (x := nm "current_target") (a := a2) (by simp [hLc, cmLw]))) fun x32 h32 => ?_
    subst x32
    refine cw_st hH hord0 hL0 (k := 40) (by decide) (by decide) (by simp) hm0
      (lvw (mLc (x := nm "gas") (a := a3) (by simp [hLc, cmLw]))) fun x40 h40 => ?_
    subst x40
    refine cw_st hH hord0 hL0 (k := 48) (by decide) (by decide) (by simp) hm0
      (lvT (mLc (x := nm "reservoir") (a := a4) (by simp [hLc, cmLw]))) fun x48 _ => ?_
    refine cw_stV hH hord0 hL0 (by simp) hm0 hws ?_
    unfold cmStores2
    refine cw_st hH hord0 hL0 (k := 88) (by decide) (by decide) (by simp) hm0
      (lvT (mLc (x := nm "data") (a := a6) (by simp [hLc, cmLw]))) fun x88 _ => ?_
    refine cw_st hH hord0 hL0 (k := 96) (by decide) (by decide) (by simp) hm0
      (lvw (mLc (x := nm "data_n") (a := a7) (by simp [hLc, cmLw]))) fun x96 h96 => ?_
    subst x96
    refine cw_st hH hord0 hL0 (k := 104) (by decide) (by decide) (by simp) hm0
      (lvT (mLc (x := nm "code_address") (a := a8) (by simp [hLc, cmLw]))) fun x104 _ => ?_
    refine cw_st hH hord0 hL0 (k := 112) (by decide) (by decide) (by simp) hm0
      (lvT (mLc (x := nm "code") (a := a9) (by simp [hLc, cmLw]))) fun x112 _ => ?_
    refine cw_st hH hord0 hL0 (k := 120) (by decide) (by decide) (by simp) hm0
      (lvw (mLc (x := nm "code_n") (a := a10) (by simp [hLc, cmLw]))) fun x120 h120 => ?_
    subst x120
    refine cw_st hH hord0 hL0 (k := 128) (by decide) (by decide) (by simp) hm0
      (R := fun _ => True) (fun u hu v hv => ?_) fun x128 _ => ?_
    · obtain ⟨y, z, -, -, rfl⟩ := Spec.Inv.ev_add2_inv hv
      exact ⟨_, rfl, trivial⟩
    refine cw_st hH hord0 hL0 (k := 136) (by decide) (by decide) (by simp) hm0
      (lvT (mLc (x := nm "transfer") (a := a11) (by simp [hLc, cmLw]))) fun x136 _ => ?_
    -- `var stat = is_static`
    let Lt : List (Nat × BitVec 64) := [(136, x136), (128, x128), (120, a10), (112, x112),
      (104, x104), (96, a7), (88, x88), (48, x48), (40, a3), (32, a2), (24, x24), (16, a0),
      (8, x8), (0, x0)]
    refine hoareG_dec (P := CW H Γ s0 p0 M ws Lt Lw0) fun s _ hs v hv _ => ?_
    have hv12 := cw_lv hs (mLc (x := nm "is_static") (a := a12) (by simp [hLc, cmLw])) hv
    subst hv12
    refine hoareG_conseq (Q := CMP H vs s0 Γ p0) ?_ (fun _ _ h => h)
      (fun r t _ _ h => cmp_locals hH h _)
    have hnst : ∀ xw ∈ Lw0, xw.1 ≠ nm "stat" := by
      intro xw hxw
      rcases List.mem_cons.mp hxw with rfl | hxw
      · show nm "m" ≠ nm "stat"; decide
      rcases List.mem_cons.mp hxw with rfl | hxw
      · show nm "pm" ≠ nm "stat"; decide
      exact (cmLw_names xw hxw).2.2.1
    have hvst : nm "value" ≠ nm "stat" := by decide
    refine hoareG_pre (P := CW H Γ s0 p0 M ws Lt ((nm "stat", a12) :: Lw0)) ?_
      (fun t _ ht => ht ▸ cw_setVar hH hs hnst hvst a12)
    unfold cmTail
    refine hoareG_seq (R := fun r t => r = none ∧ ∃ w, CW H Γ s0 p0 M ws Lt ((nm "stat", w) :: Lw0) t)
      ?_ (fun r t _ hr _ h => absurd h.1 hr) ?_
    · refine hoareG_ite ?_ (hoareG_skip fun t _ ⟨ht, _⟩ => ⟨rfl, a12, ht⟩)
      refine hoareG_assign fun t _ ⟨ht, _⟩ v hv _ => ?_
      rw [ev_cw] at hv
      cases hv
      exact ⟨rfl, _, cw_setVar hH (cw_wk ht) hnst hvst _⟩
    intro t ht ⟨_, wst, hcw⟩ hg
    revert t ht hcw hg
    refine fun t ht hcw hg => (?_ : HoareG σ X (CW H Γ s0 p0 M ws Lt ((nm "stat", wst) :: Lw0)) _ _)
      t ht hcw hg
    have hm1 : (nm "m", M) ∈ (nm "stat", wst) :: Lw0 := List.mem_cons_of_mem _ hm0
    have mL1 : ∀ {x : MlS} {a : BitVec 64}, (x, a) ∈ Lc → (x, a) ∈ (nm "stat", wst) :: Lw0 :=
      fun h => List.mem_cons_of_mem _ (mLc h)
    refine cw_st hH hord0 hL0 (k := 144) (by decide) (by decide) (by simp [Lt]) hm1
      (lvT (x := nm "stat") (a := wst) List.mem_cons_self) fun x144 _ => ?_
    have hevu : ∀ {L : List (Nat × BitVec 64)} {Lw : List (MlS × BitVec 64)} (u : State σ),
        CW H Γ s0 p0 M ws L Lw u → gword u (nm "ev") = some e.base := by
      intro L Lw u hu
      have := hu.2.2.2.2.2.2.2.2 (nm "ev") (by decide)
      unfold gword; rw [this]; exact hevs
    have hfit : ∀ {L : List (Nat × BitVec 64)} {Lw : List (MlS × BitVec 64)} (j : Nat), j < 35 →
        ∀ u, CW H Γ s0 p0 M ws L Lw u → ∀ v, ev u (gLoad "ev" (8 * j)) = some v →
          ∃ x, v = .val (.word x) ∧ Fits Γ ((guestC.ty tEV).slot j) x := by
      intro L Lw j hj u hu v hv
      obtain ⟨rfl, -⟩ := ev_gLoad_eq (hevu u hu) hv
      refine ⟨_, rfl, ?_⟩
      obtain ⟨_, _, _, _, hFl, _⟩ := trk_G hu.1
      have := hFl e he.1 j (by unfold Obj.HasSlot; omega)
      rw [he.2.1] at this
      exact this
    refine cw_st hH hord0 hL0 (k := 152) (by decide) (by decide) (by simp [Lt]) hm1
      (R := Fits Γ (.ptr tHTh20)) (hfit 21 (by decide)) fun x152 hx152 => ?_
    refine cw_st hH hord0 hL0 (k := 160) (by decide) (by decide) (by simp [Lt]) hm1
      (R := Fits Γ (.ptr tHTh52)) (hfit 22 (by decide)) fun x160 hx160 => ?_
    refine cw_st hH hord0 hL0 (k := 168) (by decide) (by decide) (by simp [Lt]) hm1
      (lvT (mL1 (x := nm "disable_pre") (a := a13) (by simp [hLc, cmLw]))) fun x168 _ => ?_
    refine hoareG_return fun u _ hu v hv => ?_
    rw [cw_lv hu hm1 hv]
    have hv0 : vs[0]? = some (.val (.word a0)) := by rw [hvsE]; rfl
    have hv2 : vs[2]? = some (.val (.word a2)) := by rw [hvsE]; rfl
    have hv3 : vs[3]? = some (.val (.word a3)) := by rw [hvsE]; rfl
    have hv10 : vs[10]? = some (.val (.word a10)) := by rw [hvsE]; rfl
    have hv7 : vs[7]? = some (.val (.word a7)) := by rw [hvsE]; rfl
    have hwb : a7.toNat < 2 ^ 32 := by
      rw [hv7] at hwd
      cases hwd
      exact hwdb
    obtain ⟨Γ', p', hc, hq⟩ := cw_final hH hM hMH hp0 hord0 hL0 hu (by simp [Lt]) hx8 (by simp [Lt]) hx152
      (by simp [Lt]) hx160 (by simp [Lt]) (by simp [Lt]) (by simp [Lt]) (by simp [Lt]) (by simp [Lt]) hwb
      hv0 hv2 hv3 hv10
    refine cmp_locals hH (t := u) (fun v' hv' => ?_) _
    cases hv'
    exact ⟨Γ', p', hc, hq⟩
  subst hv
  have hfin := H0 s0 hs0 rfl (by rw [hr]; simp [Good])
  rw [hr] at hfin
  obtain ⟨Γ', p', hc, hq⟩ := hfin v rfl
  exact ⟨Γ', p0, p', hc, hq⟩

/-! ## Guest instances -/

open InitECandidate.Solver.MemSafe.Hooks in
/-- Message records are unhooked in the final hook family. -/
theorem msgHook_guestJ : ∀ (Γ : Gam) (s : State σ) (o : Obj), o.ty = tMSGs →
    (guestHooksJ (σ := σ)).wf Γ s o := by
  intro Γ s o ht
  refine ⟨?_, fun hj => by rw [ht] at hj; exact absurd hj (by decide)⟩
  show gwf Γ s o
  unfold gwf
  rw [ht, show hkOf tMSGs = .none by decide]
  trivial

open InitECandidate.Solver.MemSafe.Hooks in
/-- **`child_message` over the final hook family.** -/
theorem cm_sumSpec_guestJ (hF : FoldOK σ X guestC guestHooksJ) :
    SumSpecA σ X guestC guestHooksJ (nm "child_message") (sgA 14 [])
      CMPre
      (fun _ _ _ _ => False) CMQ :=
  cm_sumSpec hF guestHooksJ_mono msgHook_guestJ

open InitECandidate.Solver.MemSafe.Hooks in
theorem msgHook_guestR : ∀ (Γ : Gam) (s : State σ) (o : Obj), o.ty = tMSGs →
    (guestHooksR (σ := σ)).wf Γ s o :=
  fun Γ s o ht => ⟨⟨msgHook_guestJ Γ s o ht, fun hl => by rw [ht] at hl; exact absurd hl (by decide)⟩,
    fun e he hty => by
      have hm := Hooks.recTab_ty he
      rw [hty, ht] at hm
      exact absurd hm (by decide)⟩

open InitECandidate.Solver.MemSafe.Hooks in
/-- **`child_message` over the journal-and-list hook family.** -/
theorem cm_sumSpec_guestR (hF : FoldOK σ X guestC guestHooksR) :
    SumSpecA σ X guestC guestHooksR (nm "child_message") (sgA 14 [])
      CMPre
      (fun _ _ _ _ => False) CMQ :=
  cm_sumSpec hF Hooks.guestHooksR_mono msgHook_guestR

end InitECandidate.Solver.MemSafe.Frames
