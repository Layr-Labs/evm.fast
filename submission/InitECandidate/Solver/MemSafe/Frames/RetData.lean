import InitECandidate.Solver.MemSafe.Frames.FinGuest
import InitECandidate.Solver.MemSafe.Frames.McWrap
import InitECandidate.Solver.MemSafe.HtabEntries.NoExcHtab
import InitECandidate.Solver.MemSafe.Struct.Trk
import InitECandidate.Solver.MemSafe.Hooks.Laws

/-!
# `set_retdata`: the `FinHyps.sd` callee fact

```
fun 1 set_retdata(1 p, 1 n) {
  if n == 0 { st ev + EV_RETDATA, evm_empty; st ev + EV_RETDATA_N, 0; st ev + EV_RETDATA_CAP, 0;
    return 0; }
  var cap = lds 1 (ev + EV_RETDATA_CAP); var 1 dst = lds 1 (ev + EV_RETDATA);
  if cap <+ n { dst = alloc(n + 8); st ev + EV_RETDATA, dst; st ev + EV_RETDATA_CAP, n; }
  memcpy(dst, p, n); st ev + EV_RETDATA_N, n; return 0; }
```

* `code_rd` (`guestAst[595]`), `noExc_rd` (only returns and abortive results, `xChk`).
* `RdHooks H`: no hook reads EV slots 18 / 19 / 27, and `tB8` objects have the trivial hook
  (`rdHooks_guest` for `guestHooks`).
* **`sd_spec`**: the `FinHyps.sd` shape over `guestC`: `PWtop [18, 19, 27]`, `Pre`/`Post` `RetOK`.
  A new buffer (`alloc(n + 8)`) becomes a `Γ` object of type `tB8` (all-scalar heap, trivial hook).
  When `n + 8` wraps, the tiny buffer cannot hold the copy, but then `memcpy` cannot return
  (`funSpec_memcpy_nw`).
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

def rdAlloc : ProgHOL 64 :=
  .seq (.call (some (some (.local, nm "dst"), none)) (nm "alloc") [.op .add [lv (nm "n"), cw 8]])
    (.seq (stG "ev" 144 (lv (nm "dst"))) (stG "ev" 216 (lv (nm "n"))))

def rdTail : ProgHOL 64 :=
  .seq (callD (nm "memcpy") [lv (nm "dst"), lv (nm "p"), lv (nm "n")])
    (.seq (stG "ev" 152 (lv (nm "n"))) (.return (cw 0)))

def rdZero : ProgHOL 64 :=
  .seq (stG "ev" 144 (gv (nm "evm_empty")))
    (.seq (stG "ev" 152 (cw 0)) (.seq (stG "ev" 216 (cw 0)) (.return (cw 0))))

def rdBody : ProgHOL 64 :=
  .seq (.ite (.cmp .equal (lv (nm "n")) (cw 0)) rdZero .skip)
    (.dec (nm "cap") .one (gLoad "ev" 216)
      (.dec (nm "dst") .one (gLoad "ev" 144)
        (.seq (.ite (.cmp .lower (lv (nm "cap")) (lv (nm "n"))) rdAlloc .skip) rdTail)))

theorem entry_rd : fnEntry Guest.Software.guestFn_set_retdata =
    (nm "set_retdata", [(nm "p", .one), (nm "n", .one)], rdBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_rd :
    guestCode (nm "set_retdata") = some ([(nm "p", .one), (nm "n", .one)], rdBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 595) (by decide)) ⟨_, rfl⟩
    entry_rd

theorem xchk_rd :
    xChk HtabEntries.htabX false (declPair Guest.Software.guestFn_set_retdata).2.2 = true := by
  conv => lhs; arg 3; cbv
  decide

theorem noExc_rd (hX : X.code.lookup = guestCode) : NoExc σ X (nm "set_retdata") :=
  HtabEntries.noExc_of_pair (HtabEntries.noExc_htabX hX) hX
    (p := declPair Guest.Software.guestFn_set_retdata)
    (declPair_valid (List.getElem_mem (n := 595) (by decide)) ⟨_, rfl⟩) xchk_rd

/-! ## Hook facts -/

/-- What `set_retdata` needs of the hooks: no hook reads EV slots 18 / 19 / 27, and `tB8` objects
have the trivial hook. -/
structure RdHooks (H : Hooks σ) : Prop where
  ret : ∀ (Γ : Gam) (s : State σ) (o o' : Obj), o' ∈ Γ → o'.ty = tEV → ∀ j ∈ [18, 19, 27],
    ¬ H.fp Γ s o (o'.cell j)
  b8 : ∀ (Γ : Gam) (s : State σ) (o : Obj), o.ty = tB8 → H.wf Γ s o

/-! ## Tracking -/

/-- The `prot` cells `set_retdata` writes: `RETDATA` and `RETDATA_CAP` of the running frame. -/
def PWc (e0 : Obj) (a : BitVec 64) : Prop := a = e0.cell 18 ∨ a = e0.cell 27

section trk
variable {H : Hooks σ} {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {e0 : Obj}

theorem trk_ev {PW : BitVec 64 → Prop} {Γ : Gam} {t : State σ}
    (h : Trk guestC H Γ0 s0 p0 PW Γ t) (he : gword s0 nmEv = some e0.base) :
    gword t nmEv = some e0.base := by
  obtain ⟨-, -, -, -, -, -, -, hpg, -⟩ := h
  unfold gword at he ⊢
  rw [hpg nmEv (by decide)]
  exact he

/-- Writes to safe cells within `WCell Γ0 ∨ PW` keep the tracking. -/
theorem trk_safe (hH : HooksLawful guestC H) {PW : BitVec 64 → Prop} {Γ : Gam} {t t' : State σ}
    (h : Trk guestC H Γ0 s0 p0 PW Γ t) {R : BitVec 64 → Prop} (hR : SafeCells guestC H Γ t R)
    (hmod : ModifiesOnly R t.memory t'.memory) (hg : t'.globals = t.globals)
    (hd : t'.memaddrs = t.memaddrs) (hbe : t'.be = t.be)
    (hRW : ∀ a, R a → WCell guestC Γ0 a ∨ PW a) : Trk guestC H Γ0 s0 p0 PW Γ t' := by
  obtain ⟨p, hp, hm, hx, hnf, hG, hmod0, hpg, hd0, hbe0⟩ := h
  refine ⟨p, by rw [ptrsOf_congr hg]; exact hp, hm, hx, hnf, G_safe hH hG hR hmod hg hd hbe, ?_,
    fun g hg' => by rw [hg]; exact hpg g hg', hd.trans hd0, hbe.trans hbe0⟩
  intro a ha
  have e1 : t'.memory a = t.memory a := hmod a fun hr => by
    rcases hRW a hr with h | h
    · exact ha (Or.inl h)
    · exact ha (Or.inr (Or.inr h))
  rw [e1, hmod0 a ha]

/-- A store to EV slot 18, 19 or 27 of the running frame. -/
theorem trk_evStore (hH : HooksLawful guestC H) (hR : RdHooks H) {Γ : Gam} {t : State σ}
    (h : Trk guestC H Γ0 s0 p0 (PWc e0) Γ t) (he0 : e0 ∈ Γ0) (het : e0.ty = tEV)
    (hsz0 : 280 ≤ e0.size) (j : Nat) (hj : j = 18 ∨ j = 19 ∨ j = 27) (x : BitVec 64) :
    Trk guestC H Γ0 s0 p0 (PWc e0) Γ
      { t with memory := upd t.memory (e0.base + BitVec.ofNat 64 (8 * j)) x } := by
  obtain ⟨e1, he1, hb1, ht1, hs1⟩ := trk_ext h e0 he0
  have hc : e0.base + BitVec.ofNat 64 (8 * j) = e1.cell j := by unfold Obj.cell; rw [hb1]
  have hjl : j ∈ [18, 19, 27] := by rcases hj with rfl | rfl | rfl <;> simp
  have hsafe : SafeCells guestC H Γ t (fun a => a = e0.base + BitVec.ofNat 64 (8 * j)) := by
    rintro a rfl
    refine ⟨e1, he1, j, by unfold Obj.HasSlot; omega, by omega, ?_, hc, fun o' _ => ?_⟩
    · rw [ht1, het]; rcases hj with rfl | rfl | rfl
      · exact Or.inr rfl
      · exact Or.inl rfl
      · exact Or.inr rfl
    · rw [hc]; exact hR.ret Γ t o' e1 he1 (ht1.trans het) j hjl
  refine trk_safe hH h hsafe (modifiesOnly_upd (R := fun a => a = e0.base + BitVec.ofNat 64 (8 * j))
    (modifiesOnly_refl _ _) rfl x) rfl rfl rfl ?_
  rintro a rfl
  rcases hj with rfl | rfl | rfl
  · exact Or.inr (Or.inl rfl)
  · exact Or.inl ⟨e0, he0, 19, by unfold Obj.HasSlot; omega, by rw [het]; decide, rfl⟩
  · exact Or.inr (Or.inr rfl)

end trk

/-! ## The body -/

section body
variable (H : Hooks σ) (Γ0 : Gam) (s0 : State σ) (p0 : Ptrs) (e0 : Obj)

/-- The end of a returning run. -/
def FinRd (u : State σ) : Prop :=
  ∃ Γ, Trk guestC H Γ0 s0 p0 (PWc e0) Γ u ∧ RetOK guestC Γ u.memory e0.base

/-- The post of the body: a return ends in `FinRd`. -/
def QF (r : Option (PanSemResultExact 64)) (u : State σ) : Prop :=
  ∀ v, r = some (.returned v) → FinRd H Γ0 s0 p0 e0 u

variable {H Γ0 s0 p0 e0}

theorem qf_locals (hH : HooksLawful guestC H) {r : Option (PanSemResultExact 64)} {u : State σ}
    (h : QF H Γ0 s0 p0 e0 r u) (l : Locs) : QF H Γ0 s0 p0 e0 r { u with locals := l } := by
  intro v hv
  obtain ⟨Γ, hT, hR⟩ := h v hv
  exact ⟨Γ, trk_congr hH hT rfl rfl rfl rfl, hR⟩

theorem qf_abn {r : PanSemResultExact 64} (h : MemSafe.Abn r) (u : State σ) :
    QF H Γ0 s0 p0 e0 (some r) u := by
  intro v hv
  simp only [Option.some.injEq] at hv
  subst hv
  rcases h with ⟨_, _, h⟩ | ⟨_, h⟩ <;> cases h

theorem off_ne (b : BitVec 64) {i j : Nat} (hi : i < 2 ^ 64) (hj : j < 2 ^ 64) (h : i ≠ j) :
    b + BitVec.ofNat 64 i ≠ b + BitVec.ofNat 64 j := by
  intro e
  have := congrArg BitVec.toNat e
  rw [BitVec.toNat_add, BitVec.toNat_add, BitVec.toNat_ofNat, BitVec.toNat_ofNat,
    Nat.mod_eq_of_lt hi, Nat.mod_eq_of_lt hj] at this
  have := b.isLt
  omega

/-- The `n = 0` branch. -/
theorem rd_zero (hD : DrvCfg guestC H tEV tCK) (hR : RdHooks H) (he0 : EvRun tEV Γ0 s0 e0)
    (hsz0 : 280 ≤ e0.size) :
    HoareG σ X (fun u => Trk guestC H Γ0 s0 p0 (PWc e0) Γ0 u) rdZero
      (fun r u => r ≠ none ∧ QF H Γ0 s0 p0 e0 r u) := by
  have hH := hD.fc.hooks
  obtain ⟨ke, hke⟩ := hD.fc.empty
  refine hoareG_seq (R := fun r u => r = none ∧ Trk guestC H Γ0 s0 p0 (PWc e0) Γ0 u) ?_
    (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · refine hoareG_stG fun u _ hu G v hG hv => ?_
    rw [trk_ev hu he0.2.2, Option.some.injEq] at hG
    subst hG
    obtain ⟨-, -, -, -, -, -, hGl, -⟩ := trk_G hu
    obtain ⟨x, hx, -⟩ := hGl _ _ hke
    have : ev u (gv (nm "evm_empty")) = some (.val (.word x)) := by
      show u.globals.lookup _ = _; exact gword_some hx
    rw [this] at hv
    cases hv
    exact ⟨x, rfl, fun _ => ⟨rfl, trk_evStore hH hR hu he0.1 he0.2.1 hsz0 18 (Or.inl rfl) x⟩⟩
  refine hoareG_seq (R := fun r u => r = none ∧ Trk guestC H Γ0 s0 p0 (PWc e0) Γ0 u) ?_
    (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · refine hoareG_stG fun u _ ⟨_, hu⟩ G v hG hv => ?_
    rw [trk_ev hu he0.2.2, Option.some.injEq] at hG
    subst hG
    rw [ev_cw] at hv
    cases hv
    exact ⟨_, rfl, fun _ => ⟨rfl, trk_evStore hH hR hu he0.1 he0.2.1 hsz0 19 (Or.inr (Or.inl rfl)) _⟩⟩
  refine hoareG_seq (R := fun r u => r = none ∧ Trk guestC H Γ0 s0 p0 (PWc e0) Γ0 u ∧
      fld u.memory e0.base 216 = 0) ?_ (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · refine hoareG_stG fun u _ ⟨_, hu⟩ G v hG hv => ?_
    rw [trk_ev hu he0.2.2, Option.some.injEq] at hG
    subst hG
    rw [ev_cw] at hv
    cases hv
    exact ⟨_, rfl, fun _ => ⟨rfl, trk_evStore hH hR hu he0.1 he0.2.1 hsz0 27 (Or.inr (Or.inr rfl)) _,
      by unfold fld; rw [rd_upd_self]; rfl⟩⟩
  · refine hoareG_return fun u _ ⟨_, hu, h216⟩ v _ => ⟨by simp, fun _ _ =>
      ⟨Γ0, trk_congr hH hu rfl rfl rfl rfl, Or.inl h216⟩⟩

end body


section body2
variable {H : Hooks σ} {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {e0 : Obj}

/-- The state before `memcpy`: the buffer `D` is a large enough all-scalar `Γ` object (and
`RetOK` holds), or `n + 8` wrapped (`D` in the heap). -/
def Mid (H : Hooks σ) (Γ0 : Gam) (s0 : State σ) (p0 : Ptrs) (e0 : Obj) (N P : BitVec 64)
    (u : State σ) : Prop :=
  u.locals.lookup (nm "n") = some (.val (.word N)) ∧ u.locals.lookup (nm "p") = some (.val (.word P)) ∧
  ∃ D Γ, u.locals.lookup (nm "dst") = some (.val (.word D)) ∧ Trk guestC H Γ0 s0 p0 (PWc e0) Γ u ∧
    ((2 ^ 64 ≤ N.toNat + 8 ∧ heapBase ≤ D.toNat) ∨
      ((∃ o ∈ Γ, o.base = D ∧ (∀ k, (guestC.ty o.ty).slot k = .scalar) ∧ N.toNat ≤ o.size) ∧
        RetOK guestC Γ u.memory e0.base))

theorem b8_scalar : ∀ k, (guestC.ty tB8).slot k = .scalar := fun _ => rfl

/-- The reallocation branch. -/
theorem rd_alloc (hF : FoldOK σ X guestC H) (hD : DrvCfg guestC H tEV tCK) (hR : RdHooks H)
    (he0 : EvRun tEV Γ0 s0 e0) (hsz0 : 280 ≤ e0.size) {N P : BitVec 64} :
    HoareG σ X (fun u => u.locals.lookup (nm "n") = some (.val (.word N)) ∧
        u.locals.lookup (nm "p") = some (.val (.word P)) ∧ Trk guestC H Γ0 s0 p0 (PWc e0) Γ0 u)
      rdAlloc (fun r u => (r = none ∧ Mid H Γ0 s0 p0 e0 N P u) ∨ (r ≠ none ∧ QF H Γ0 s0 p0 e0 r u)) := by
  have hH := hD.fc.hooks
  have hA : AllocG guestC := ⟨fun g hg => (hF.hAC g hg).1, fun g hg => (hF.hAC g hg).2⟩
  have hnd : nm "dst" ≠ nm "n" := by decide
  have hpd : nm "dst" ≠ nm "p" := by decide
  let A1 : State σ → Prop := fun u => u.locals.lookup (nm "n") = some (.val (.word N)) ∧
    u.locals.lookup (nm "p") = some (.val (.word P)) ∧ ∃ q Γ,
      u.locals.lookup (nm "dst") = some (.val (.word q)) ∧ Trk guestC H Γ0 s0 p0 (PWc e0) Γ u ∧
      ((2 ^ 64 ≤ N.toNat + 8 ∧ heapBase ≤ q.toNat) ∨
        (⟨q, tB8, 8 * ((N.toNat + 8) / 8)⟩ ∈ Γ ∧ N.toNat + 8 < 2 ^ 64))
  refine hoareG_seq (R := fun r u => (r = none ∧ A1 u) ∨ (r ≠ none ∧ QF H Γ0 s0 p0 e0 r u)) ?_
    (fun r t _ hr _ h => h.elim (fun h => absurd h.1 hr) Or.inr) ?_
  · refine hoareG_callA (FunSpec.and (allocSpec_alloc hF.hX) (funSpec_dom _)) ?_ ?_
    · intro s _ ⟨hn, hp, hT⟩ vs hvs callee v st ⟨hAl, hd, hbe⟩ _ _
      have hev : evs s [.op .add [lv (nm "n"), cw 8]] = some [.val (.word (N + BitVec.ofNat 64 8))] :=
        evs_cons (ev_add2 (lv_of rfl hn) (ev_cw s 8)) evs_nil
      rw [hev] at hvs
      cases hvs
      obtain ⟨p, hps, -, -, -, ⟨q0, hq0, hord, -⟩, -⟩ := id hT
      rw [hps] at hq0
      cases hq0
      have hpe : ptrsOf (callEntryStateHOLFinite s callee) = some p := by
        rw [show ptrsOf (callEntryStateHOLFinite s callee) = ptrsOf s from ptrsOf_congr rfl]; exact hps
      obtain ⟨hm, hgl, p', hp', hord', hmo, hret⟩ := hAl (by simp [Good]) _ p rfl hpe hord
      obtain ⟨q, rfl, hq8, hlive, hna⟩ := hret _ rfl
      have hl1 : ∀ x, x ≠ nm "dst" → (setKvarHOLFinite .local (nm "dst") (.val (.word q))
          { st with locals := s.locals }).locals.lookup x = s.locals.lookup x := fun x hx =>
        lk_set_ne _ _ (Ne.symm hx)
      refine Or.inl ⟨rfl, by rw [hl1 _ (Ne.symm hnd)]; exact hn, by rw [hl1 _ (Ne.symm hpd)]; exact hp,
        q, ?_⟩
      by_cases hw : N.toNat + 8 < 2 ^ 64
      · have hN8 : (N + BitVec.ofNat 64 8).toNat = N.toNat + 8 := by
          rw [BitVec.toNat_add, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by decide : 8 < 2 ^ 64),
            Nat.mod_eq_of_lt hw]
        rw [hN8] at hlive hna
        have hT' := trk_alloc_obj (ty := tB8) (n := 8 * ((N.toNat + 8) / 8)) hH hD.mono hA hT rfl rfl hpe
          hm hgl hp' hord' hmo hd hbe hq8 (by omega) (by omega) (by show 8 ≤ _; omega) rfl
          ⟨hlive.1, by have := hlive.2; omega⟩ (fun a h1 h2 => hna a h1 (by omega)) b8_scalar
          (by decide) (fun Γ s o h => hR.b8 Γ s o h)
        exact ⟨_, lk_set_self _ _ _, trk_congr hH hT' rfl rfl rfl rfl,
          Or.inr ⟨List.mem_append_right _ (List.mem_singleton_self _), hw⟩⟩
      · have hT' := trk_alloc hH hA hT rfl rfl hpe hm hgl hp' hord' hmo hd hbe
        exact ⟨_, lk_set_self _ _ _, trk_congr hH hT' rfl rfl rfl rfl, Or.inl ⟨by omega, hlive.1⟩⟩
    · intro s _ _ vs _ callee r st _ _ habn
      exact Or.inr ⟨by simp, qf_abn habn _⟩
  · refine hoareG_pre (P := A1) ?_ (fun u _ h => h.elim (fun h => h.2) (fun h => absurd rfl h.1))
    refine hoareG_seq (R := fun r u => r = none ∧ A1 u ∧ ∃ q, u.locals.lookup (nm "dst") = some (.val (.word q)) ∧
      fld u.memory e0.base 144 = q) ?_ (fun _ _ _ hr _ h => absurd h.1 hr) ?_
    · refine hoareG_stG fun u _ ⟨hn, hp, q, Γ, hq, hT, hc⟩ G v hG hv => ?_
      rw [trk_ev hT he0.2.2, Option.some.injEq] at hG
      subst hG
      rw [lv_of rfl hq] at hv
      cases hv
      exact ⟨q, rfl, fun _ => ⟨rfl, ⟨hn, hp, q, Γ, hq,
        trk_evStore hH hR hT he0.1 he0.2.1 hsz0 18 (Or.inl rfl) q, hc⟩, q, hq,
        by unfold fld; exact rd_upd_self _ _ _⟩⟩
    · refine hoareG_stG fun u _ ⟨_, ⟨hn, hp, q, Γ, hq, hT, hc⟩, q', hq', h144⟩ G v hG hv => ?_
      rw [hq] at hq'
      cases hq'
      rw [trk_ev hT he0.2.2, Option.some.injEq] at hG
      subst hG
      rw [lv_of rfl hn] at hv
      cases hv
      refine ⟨N, rfl, fun _ => Or.inl ⟨rfl, hn, hp, q, Γ, hq,
        trk_evStore hH hR hT he0.1 he0.2.1 hsz0 27 (Or.inr (Or.inr rfl)) N, ?_⟩⟩
      rcases hc with hc | ⟨hmem, hw⟩
      · exact Or.inl hc
      · refine Or.inr ⟨⟨_, hmem, rfl, b8_scalar, by show N.toNat ≤ 8 * ((N.toNat + 8) / 8); omega⟩, Or.inr ⟨_, hmem, ?_, b8_scalar, rfl, ?_⟩⟩
        · show q = fld (upd u.memory (e0.base + BitVec.ofNat 64 216) N) e0.base 144
          unfold fld
          rw [rd_upd_ne _ _ (off_ne _ (by decide) (by decide) (by decide))]
          exact h144.symm
        · show (fld (upd u.memory (e0.base + BitVec.ofNat 64 216) N) e0.base 216).toNat ≤ _
          unfold fld
          rw [rd_upd_self]
          show N.toNat ≤ 8 * ((N.toNat + 8) / 8)
          omega

end body2


section body3
variable {H : Hooks σ} {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {e0 : Obj}

/-- `RetOK` survives a change that keeps cells 18 / 27 of the record and an extension of `Γ`. -/
theorem retOK_keep {Γ Γ' : Gam} {m m' : Mem} (hx : Ext Γ Γ')
    (h18 : fld m' e0.base 144 = fld m e0.base 144) (h27 : fld m' e0.base 216 = fld m e0.base 216)
    (h : RetOK guestC Γ m e0.base) : RetOK guestC Γ' m' e0.base := by
  unfold RetOK evRetd evRetdCap at *
  rw [h18, h27]
  rcases h with h | ⟨o, ho, hb, hsc, hrg, hle⟩
  · exact Or.inl h
  · obtain ⟨o', ho', hb', ht', hs'⟩ := hx o ho
    exact Or.inr ⟨o', ho', hb'.trans hb, by rw [ht']; exact hsc, by rw [ht']; exact hrg,
      le_trans hle hs'⟩

/-- The copy, `RETDATA_N` and the return. -/
theorem rd_tail (hF : FoldOK σ X guestC H) (hD : DrvCfg guestC H tEV tCK) (hR : RdHooks H)
    (he0 : EvRun tEV Γ0 s0 e0) (hsz0 : 280 ≤ e0.size) (hord0 : p0.Ordered)
    (hL0 : Layout guestC p0 Γ0) {N P : BitVec 64} :
    HoareG σ X (Mid H Γ0 s0 p0 e0 N P) rdTail (QF H Γ0 s0 p0 e0) := by
  have hH := hD.fc.hooks
  refine hoareG_seq (R := fun r u => (r = none ∧ u.locals.lookup (nm "n") = some (.val (.word N)) ∧
      ∃ Γ, Trk guestC H Γ0 s0 p0 (PWc e0) Γ u ∧ RetOK guestC Γ u.memory e0.base) ∨
      (r ≠ none ∧ QF H Γ0 s0 p0 e0 r u)) ?_
    (fun r t _ hr _ h => h.elim (fun h => absurd h.1 hr) (fun h => h.2)) ?_
  · refine hoareG_callD (FunSpec.and (sumSpec_rel (summ_memcpy hH tagSlots_guestC hF.hX hF.hal))
      (FunSpec.and (funSpec_memcpy_nw hF.hX) (funSpec_dom _))) ?_ ?_
    · intro s hs ⟨hn, hp, D, Γ, hd, hT, hcase⟩ vs hvs callee v st ⟨hS, hW, hdm, hbe⟩ _
      have hev : evs s [lv (nm "dst"), lv (nm "p"), lv (nm "n")] =
          some [.val (.word D), .val (.word P), .val (.word N)] :=
        evs_cons (lv_of rfl hd) (evs_cons (lv_of rfl hp) (evs_cons (lv_of rfl hn) evs_nil))
      rw [hev] at hvs
      cases hvs
      rcases hcase with ⟨hw, hDb⟩ | ⟨⟨o, ho, hob, hsc, hle⟩, hret⟩
      · exfalso
        have hb : heapBase = 2701131776 := rfl
        have := hW D P N rfl (by omega) (fun a ha => by
          have := hF.hNS a (by rw [← hs.2.1]; exact ha); omega) v rfl
        omega
      · have hG := trk_G hT
        have hGe : G guestC H Γ (callEntryStateHOLFinite s callee) := (G_locFree hH s _ _).mpr hG
        obtain ⟨p, hps, hord, hL, -⟩ := hG
        have hsc' : ∀ a, Overlap D.toNat (1 * N.toNat + 0) a → SCell guestC Γ a := fun a ha =>
          overlap_scell hord hL ho hsc (by unfold Obj.lo; rw [hob]) (by unfold Obj.hi; rw [hob]; omega) ha
        have hargs : ArgsOK guestC Γ p sigMemcpy.params
            [.val (.word D), .val (.word P), .val (.word N)] := by
          refine ⟨rfl, fun i pt w hpt hw => ?_⟩
          rcases i with _ | _ | _ | i <;> simp [sigMemcpy] at hpt hw <;> subst hpt <;> subst hw
          · exact ⟨D, N, rfl, rfl, fun a ha => Or.inl (hsc' a ha)⟩
          · trivial
          · trivial
        have hpe : ptrsOf (callEntryStateHOLFinite s callee) = some p := by
          rw [show ptrsOf (callEntryStateHOLFinite s callee) = ptrsOf s from ptrsOf_congr rfl]; exact hps
        obtain ⟨Γ', q1, q2, hc, -⟩ := hS (by simp [Good]) Γ hGe ⟨p, hpe, hargs⟩ trivial
        have hq1 : q1 = p := by have := hc.1; rw [hpe] at this; exact (Option.some.inj this).symm
        subst hq1
        have hac : ∀ a, ArgCells sigMemcpy.params [.val (.word D), .val (.word P), .val (.word N)] a →
            SCell guestC Γ a := fun a ha => hsc' a (argCells_memcpy (gr := false) ha)
        have hT' := trk_call hT hord0 hL0 rfl rfl hc (fun g _ => by simp [sigMemcpy])
          (fun a ha => Or.inl (sCell_wCell (hac a ha))) (fun a _ h => h.elim) hdm hbe
        -- `RETDATA` / `RETDATA_CAP` are `prot` cells of `Γ`, not written by `memcpy`
        obtain ⟨e1, he1, hb1, ht1, hs1⟩ := trk_ext hT e0 he0.1
        have hkeep : ∀ j, (j = 18 ∨ j = 27) → fld st.memory e0.base (8 * j) = fld s.memory e0.base (8 * j) := by
          intro j hj
          have hpc : ProtCell guestC Γ (e1.cell j) := ⟨e1, he1, j, by
            unfold Obj.HasSlot; rcases hj with rfl | rfl <;> omega, by
            rw [ht1, he0.2.1]; rcases hj with rfl | rfl <;> rfl, rfl⟩
          have := sumCore_prot hc hGe (fun a ha hp' => by
            obtain ⟨o1, ho1, k1, hk1, hs1, rfl⟩ := hac a ha
            obtain ⟨o2, ho2, k2, hk2, hp2, he2⟩ := hp'
            obtain ⟨rfl, rfl⟩ := cell_inj hord hL ho1 ho2 hk1 hk2 he2
            rw [hs1] at hp2; cases hp2) _ hpc (fun h => h)
          unfold fld rd
          have hce : e0.base + BitVec.ofNat 64 (8 * j) = e1.cell j := by unfold Obj.cell; rw [hb1]
          rw [hce, this]
          rfl
        refine Or.inl ⟨rfl, hn, Γ', trk_congr hH hT' rfl rfl rfl rfl,
          retOK_keep hc.2.2.2.1 (hkeep 18 (Or.inl rfl)) (hkeep 27 (Or.inr rfl)) hret⟩
    · intro s _ _ vs _ callee r st _ _ habn
      exact Or.inr ⟨by simp, qf_abn habn _⟩
  · refine hoareG_pre (P := fun u => u.locals.lookup (nm "n") = some (.val (.word N)) ∧
      ∃ Γ, Trk guestC H Γ0 s0 p0 (PWc e0) Γ u ∧ RetOK guestC Γ u.memory e0.base) ?_
      (fun u _ h => h.elim (fun h => h.2) (fun h => absurd rfl h.1))
    refine hoareG_seq (R := fun r u => r = none ∧ FinRd H Γ0 s0 p0 e0 u) ?_
      (fun _ _ _ hr _ h => absurd h.1 hr) ?_
    · refine hoareG_stG fun u _ ⟨hn, Γ, hT, hret⟩ G v hG hv => ?_
      rw [trk_ev hT he0.2.2, Option.some.injEq] at hG
      subst hG
      rw [lv_of rfl hn] at hv
      cases hv
      refine ⟨N, rfl, fun _ => ⟨rfl, Γ, trk_evStore hH hR hT he0.1 he0.2.1 hsz0 19
        (Or.inr (Or.inl rfl)) N, retOK_keep (ext_refl Γ) ?_ ?_ hret⟩⟩
      · unfold fld; exact rd_upd_ne _ _ (off_ne _ (by decide) (by decide) (by decide))
      · unfold fld; exact rd_upd_ne _ _ (off_ne _ (by decide) (by decide) (by decide))
    · exact hoareG_return fun u _ ⟨_, Γ, hT, hret⟩ v _ _ _ =>
        ⟨Γ, trk_congr hH hT rfl rfl rfl rfl, hret⟩

end body3


section main
variable {H : Hooks σ} {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {e0 : Obj}

/-- **The body of `set_retdata`.** -/
theorem rd_hoare (hF : FoldOK σ X guestC H) (hD : DrvCfg guestC H tEV tCK) (hR : RdHooks H)
    (hG0 : G guestC H Γ0 s0) (hp0 : ptrsOf s0 = some p0) (he0 : EvRun tEV Γ0 s0 e0)
    (hret0 : RetOK guestC Γ0 s0.memory e0.base) {P N : BitVec 64}
    (hP : s0.locals.lookup (nm "p") = some (.val (.word P)))
    (hN : s0.locals.lookup (nm "n") = some (.val (.word N))) :
    HoareG σ X (fun u => u = s0) rdBody (QF H Γ0 s0 p0 e0) := by
  have hH := hD.fc.hooks
  obtain ⟨q, hq, hord0, hL0, -⟩ := id hG0
  rw [hp0] at hq
  cases hq
  have hsz0 : 280 ≤ e0.size := by
    have := (hL0.1 e0 he0.1).2.2.2.1; rw [he0.2.1] at this; exact this
  have hT0 : Trk guestC H Γ0 s0 p0 (PWc e0) Γ0 s0 := trk_refl hG0 hp0
  refine hoareG_seq (R := fun r u => (r = none ∧ u = s0 ∧ N ≠ 0) ∨
      (r ≠ none ∧ QF H Γ0 s0 p0 e0 r u)) ?_
    (fun r t _ hr _ h => h.elim (fun h => absurd h.1 hr) (fun h => h.2)) ?_
  · refine hoareG_ite ?_ ?_
    · exact hoareG_conseq (rd_zero hD hR he0 hsz0) (fun u _ ⟨hu, _⟩ => by rw [hu]; exact hT0)
        (fun r t _ _ h => Or.inr h)
    · refine hoareG_skip fun u _ ⟨hu, hc⟩ => Or.inl ⟨rfl, hu, ?_⟩
      rw [hu] at hc
      obtain ⟨x, y, hx, hy, hxy⟩ := cmp_false hc
      rw [lv_of rfl hN] at hx
      rw [ev_cw] at hy
      cases hx; cases hy
      intro h0
      subst h0
      simp [Flapjack.Compiler.Encoders.Asm.wordCmpHOL] at hxy
  · refine hoareG_pre (P := fun u => u = s0 ∧ N ≠ 0) ?_
      (fun u _ h => h.elim (fun h => h.2) (fun h => absurd rfl h.1))
    refine hoareG_dec fun s1 _ ⟨hs1, hN0⟩ v hv _ => ?_
    rw [hs1] at hv ⊢
    obtain ⟨rfl, -⟩ := ev_gLoad_eq he0.2.2 hv
    refine hoareG_conseq (Q := QF H Γ0 s0 p0 e0) ?_ (fun _ _ h => h) (fun r t _ _ h => qf_locals hH h _)
    refine hoareG_dec fun s2 _ hs2 v2 hv2 _ => ?_
    rw [hs2] at hv2 ⊢
    obtain ⟨hv2e, -⟩ := ev_gLoad_eq (s := setVarHOLFinite (nm "cap") _ s0) he0.2.2 hv2
    have hv2e' : v2 = .val (.word (fld s0.memory e0.base 144)) := hv2e
    subst hv2e'
    refine hoareG_conseq (Q := QF H Γ0 s0 p0 e0) ?_ (fun _ _ h => h) (fun r t _ _ h => qf_locals hH h _)
    have hl2 : ∀ x, nm "dst" ≠ x → nm "cap" ≠ x → (setVarHOLFinite (nm "dst")
        (.val (.word (fld s0.memory e0.base 144))) (setVarHOLFinite (nm "cap")
          (.val (.word (fld s0.memory e0.base 216))) s0)).locals.lookup x = s0.locals.lookup x :=
      fun x h1 h2 => by rw [lk_set_ne _ _ h1, lk_set_ne _ _ h2]
    have hn2 := (hl2 (nm "n") (by decide) (by decide)).trans hN
    have hp2 := (hl2 (nm "p") (by decide) (by decide)).trans hP
    refine hoareG_seq (R := fun r u => (r = none ∧ Mid H Γ0 s0 p0 e0 N P u) ∨
        (r ≠ none ∧ QF H Γ0 s0 p0 e0 r u)) ?_
      (fun r t _ hr _ h => h.elim (fun h => absurd h.1 hr) (fun h => h.2)) ?_
    · refine hoareG_ite ?_ ?_
      · refine hoareG_pre (rd_alloc hF hD hR he0 hsz0) (fun u _ ⟨hu, _⟩ => ?_)
        rw [hu]
        exact ⟨hn2, hp2, trk_congr hH hT0 rfl rfl rfl rfl⟩
      · refine hoareG_skip fun u _ ⟨hu, hc⟩ => Or.inl ⟨rfl, ?_⟩
        rw [hu] at hc ⊢
        obtain ⟨x, y, hx, hy, hxy⟩ := cmp_false hc
        rw [lv_of rfl ((lk_set_ne _ _ (by decide)).trans (lk_set_self _ _ _))] at hx
        rw [lv_of rfl hn2] at hy
        cases hx; cases hy
        have hle := lower_false hxy
        refine ⟨hn2, hp2, _, Γ0, lk_set_self _ _ _, trk_congr hH hT0 rfl rfl rfl rfl, Or.inr ⟨?_, hret0⟩⟩
        rcases hret0 with h0 | ⟨o, ho, hb, hsc, -, hle'⟩
        · exfalso
          unfold evRetdCap at h0
          rw [h0] at hle
          exact hN0 (BitVec.eq_of_toNat_eq (by simp at hle ⊢; omega))
        · exact ⟨o, ho, hb, hsc, le_trans hle hle'⟩
    · exact hoareG_pre (rd_tail hF hD hR he0 hsz0 hord0 hL0)
        (fun u _ h => h.elim (fun h => h.2) (fun h => absurd rfl h.1))

end main

/-- **`set_retdata`** (the `FinHyps.sd` callee fact over `guestC`). -/
theorem sd_spec {H : Hooks σ} (hF : FoldOK σ X guestC H) (hD : DrvCfg guestC H tEV tCK)
    (hR : RdHooks H) (hfp : KeepsFp σ X (nm "set_retdata")) :
    SumSpecA σ X guestC H (nm "set_retdata") (sgA 2 [])
      (fun _ s Γ => ∃ e, EvRun tEV Γ s e ∧ RetOK guestC Γ s.memory e.base)
      (PWtopM tEV tCK [18, 19, 27])
      (fun vs s Γ r t Γ' => FQ vs s Γ r t Γ' ∧ ∀ e, gword s nmEv = some e →
        RetOK guestC Γ' t.memory e) := by
  refine sumSpecA_of_returns (noExc_rd hF.hX) ?_
  rintro vs body callee rs hl s0 hs hloc r hr v hv Γ0 hG0 ⟨p0, hp0, -⟩ ⟨e0, he0, hret0⟩
  have hfp' := hfp vs body callee rs hl s0 hs hloc r hr (by rw [hv]; simp [Good])
    (by rw [hv]; exact not_abortive_ret v)
  rw [hF.hX] at hl
  obtain ⟨rfl, -, A, B, rfl, hsa, hsb, hA, hB⟩ := lookupCode_two code_rd (by decide) hl
  obtain ⟨P, rfl⟩ := val_of_shapeEq_one hsa
  obtain ⟨N, rfl⟩ := val_of_shapeEq_one hsb
  have hP : s0.locals.lookup (nm "p") = some (.val (.word P)) := by rw [hloc]; exact hA
  have hN : s0.locals.lookup (nm "n") = some (.val (.word N)) := by rw [hloc]; exact hB
  have Hb := rd_hoare hF hD hR hG0 hp0 he0 hret0 hP hN s0 hs rfl (by rw [hr, hv]; simp [Good])
  rw [hr] at Hb
  obtain ⟨Γ', hT, hret⟩ := Hb v (by rw [hv])
  obtain ⟨q0, -, hord0, hL0, -⟩ := id hG0
  have hsz0 : 280 ≤ e0.size := by
    have := (hL0.1 e0 he0.1).2.2.2.1; rw [he0.2.1] at this; exact this
  have hPW : ∀ a, PWc e0 a → ProtCell guestC Γ0 a ∧ PWtopM tEV tCK [18, 19, 27]
      [.val (.word P), .val (.word N)] s0 Γ0 a := by
    intro a ha
    rcases ha with rfl | rfl
    · exact ⟨⟨e0, he0.1, 18, by unfold Obj.HasSlot; omega, by rw [he0.2.1]; rfl, rfl⟩,
        Or.inl ⟨e0, he0, 18, by simp, rfl⟩, noMsg_of_frame (tCK := tCK) hL0 (by decide) he0.1
          (Or.inl he0.2.1) (inO_cell hord0 hL0 he0.1 (k := 8 * 18) (by omega))⟩
    · exact ⟨⟨e0, he0.1, 27, by unfold Obj.HasSlot; omega, by rw [he0.2.1]; rfl, rfl⟩,
        Or.inl ⟨e0, he0, 27, by simp, rfl⟩, noMsg_of_frame (tCK := tCK) hL0 (by decide) he0.1
          (Or.inl he0.2.1) (inO_cell hord0 hL0 he0.1 (k := 8 * 27) (by omega))⟩
  obtain ⟨p', hc⟩ := trk_sumCore (sg := sgA 2 []) (r := r) hT hp0 hPW
    (fun h => by simp [sgA] at h) (fun _ _ _ _ i rt w hrt => by simp [sgA] at hrt)
  refine ⟨Γ', _, p', hc, ⟨fpQ_of_fp hfp', fun w hw => by rw [hv] at hw; cases hw⟩, fun e he => ?_⟩
  rw [he0.2.2, Option.some.injEq] at he
  subst he
  exact hret

/-! ## The guest hooks -/

open InitECandidate.Solver.MemSafe.Hooks in
theorem rdHooks_guest : RdHooks (guestHooks (σ := σ)) where
  ret := by
    intro Γ s o o' ho' ht' j hj hf
    have hj' : j = 18 ∨ j = 19 ∨ j = 27 := by simpa using hj
    have hjl : j ≤ 27 := by omega
    rw [guestHooks_fp] at hf
    cases hk : hkOf o.ty with
    | ev =>
      obtain ⟨⟨ho, hG, -⟩, k, hkk, he⟩ := (gfp_ev hk).1 hf
      have ht := hkOf_ev hk
      obtain ⟨e1, h1, h2⟩ := scratch_cell hG ho (by rw [ht]; rfl)
        (k := k) (by have := Hooks.ev_size hG ho ht; have := sm_le hkk; omega)
      obtain ⟨e2, h3, h4⟩ := scratch_cell hG ho' (by rw [ht']; rfl)
        (k := j) (by have := Hooks.ev_size hG ho' ht'; omega)
      rw [he] at h3 h4 e2
      have e := gam_eq hG ho ho' h1 h2 h3 h4
      subst e
      rw [e1] at e2
      have hkj : k = j := by omega
      subst hkj
      simp [smSlots] at hkk
      omega
    | tab =>
      exact tab_fp_evck hk hf ho' (Or.inl ht')
        (by have := Hooks.ev_size ((gfp_tab hk).1 hf).1.2.1 ho' ht'; omega) rfl
    | none => exact gfp_none hk hf
  b8 := fun Γ s o ht => by
    show gwf Γ s o
    exact gwf_none (by rw [ht]; rfl)


end InitECandidate.Solver.MemSafe.Frames
