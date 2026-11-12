import InitECandidate.Solver.MemSafe.Helpers.Pure
import InitECandidate.Solver.MemSafe.Helpers.Rlp
import InitECandidate.Solver.MemSafe.Alloc

set_option autoImplicit false

/-!
# `compute_jumpdests`

`compute_jumpdests(code, n)` allocates a bitmap `bm` of `sz = ((n + 63) >>> 6) * 8 + 8` bytes in
scratch (`scratch_alloc`), zeroes it, and scans the code: at a `JUMPDEST` it sets bit `pc` of the
bitmap word `bm + (pc >>> 6) * 8`, which lies inside the bitmap because `pc < n`; every other
step only updates locals (`jdElse`, checked by `pureB`).

* `sumSpec_compute_jumpdests`: a `SumSpec` for `[.any, .any]` (`grows := false`) with the
  precondition `n + 63 < 2^64` (`JdPre`; without it `sz` wraps to `8` and a `JUMPDEST` at
  `pc ≥ 64` would write outside the bitmap). Memory changes only in cells unallocated at entry,
  `Γ` is unchanged, the allocator moves monotonically. Side condition `AllocGlobs C`.
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Helpers
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

def bmN : MlS := nm "bm"
def codeN : MlS := nm "code"
def pcN : MlS := nm "pc"
def opN : MlS := nm "op"
def advN : MlS := nm "adv"

/-- `((n + 63) >>> 6) * 8 + 8` -/
def jdSz : ExpHOL 64 :=
  .op .add [.panop .mul [.shift .lsr (.op .add [lv nN, cw 63]) (cw 6), cw 8], cw 8]

/-- `bm + (pc >>> 6) * 8` -/
def jdAddr : ExpHOL 64 := .op .add [lv bmN, .panop .mul [.shift .lsr (lv pcN) (cw 6), cw 8]]

def jdStore : ProgHOL 64 :=
  .store jdAddr (.op .or [.load .one jdAddr, .shift .lsl (cw 1) (.op .and [lv pcN, cw 63])])

/-- The guest body as installed. -/
def jdRaw : ProgHOL 64 := (fnEntry Guest.Software.guestFn_compute_jumpdests).2.2.1

/-- The non-`JUMPDEST` step (it only updates `adv` and the locals `nx`, `nx2`). -/
def jdElse : ProgHOL 64 :=
  match jdRaw with
  | .decCall _ _ _ _ (.seq _ (.dec _ _ _ (.seq (.while _ (.dec _ _ _ (.dec _ _ _
      (.seq (.ite _ _ e) _)))) _))) => e
  | _ => .skip

def jdBody : ProgHOL 64 :=
  .decCall bmN .one (nm "scratch_alloc") [jdSz]
    (.seq (callD (nm "memzero") [lv bmN, jdSz])
      (.dec pcN .one (cw 0)
        (.seq (.while (ltN pcN nN)
            (.dec opN .one (.loadByte (offI codeN pcN 0))
              (.dec advN .one (cw 1)
                (.seq (.ite (.cmp .equal (lv opN) (cw 91)) jdStore jdElse)
                  (.assign .local pcN (.op .add [lv pcN, lv advN]))))))
          (.return (lv bmN)))))

theorem entry_compute_jumpdests : fnEntry Guest.Software.guestFn_compute_jumpdests =
    (nm "compute_jumpdests", [(codeN, .one), (nN, .one)], jdBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_compute_jumpdests : guestCode (nm "compute_jumpdests") =
    some ([(codeN, .one), (nN, .one)], jdBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 463) (by decide))
    ⟨_, rfl⟩ entry_compute_jumpdests

set_option maxHeartbeats 0 in
set_option cbv.maxSteps 4000000000 in
theorem pure_jdElse : pureB [bmN, nN, pcN] jdElse = true := by decide_cbv

/-! ## Arithmetic -/

theorem ev_jdSz {s : State σ} {N : BitVec 64} (hn : s.locals.lookup nN = some (.val (.word N))) :
    ev s jdSz = some (.val (.word (((N + BitVec.ofNat 64 63) >>> (6 : Nat)) *
      BitVec.ofNat 64 8 + BitVec.ofNat 64 8))) := by
  unfold jdSz
  have h1 := ev_add2 (ev_lw hn) (ev_cw s 63)
  have h2 : ev s (.shift .lsr (.op .add [lv nN, cw 63]) (cw 6)) =
      some (.val (.word ((N + BitVec.ofNat 64 63) >>> (6 : Nat)))) := by
    rw [ev_shift h1 (ev_cw _ 6)]
    simp [wordShiftHOL]
  rw [ev_add2 (ev_mul2 h2 (ev_cw _ 8)) (ev_cw _ 8)]

theorem toNat_jdSz {N : BitVec 64} (h : N.toNat + 63 < 2 ^ 64) :
    (((N + BitVec.ofNat 64 63) >>> (6 : Nat)) * BitVec.ofNat 64 8 + BitVec.ofNat 64 8).toNat =
      (N.toNat + 63) / 64 * 8 + 8 := by
  have e1 : (N + BitVec.ofNat 64 63).toNat = N.toNat + 63 := toNat_addc h
  have e2 : ((N + BitVec.ofNat 64 63) >>> (6 : Nat)).toNat = (N.toNat + 63) / 64 := by
    rw [BitVec.toNat_ushiftRight, Nat.shiftRight_eq_div_pow, e1]
  have e3 : (((N + BitVec.ofNat 64 63) >>> (6 : Nat)) * BitVec.ofNat 64 8).toNat =
      (N.toNat + 63) / 64 * 8 := by
    rw [BitVec.toNat_mul, e2, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (a := 8) (by decide),
      Nat.mod_eq_of_lt (by omega)]
  rw [toNat_addc (by rw [e3]; omega), e3]

theorem ev_jdAddr {s : State σ} {Q PC : BitVec 64}
    (hb : s.locals.lookup bmN = some (.val (.word Q)))
    (hp : s.locals.lookup pcN = some (.val (.word PC))) :
    ev s jdAddr = some (.val (.word (Q + (PC >>> (6 : Nat)) * BitVec.ofNat 64 8))) := by
  unfold jdAddr
  have h2 : ev s (.shift .lsr (lv pcN) (cw 6)) = some (.val (.word (PC >>> (6 : Nat)))) := by
    rw [ev_shift (ev_lw hp) (ev_cw _ 6)]
    simp [wordShiftHOL]
  rw [ev_add2 (ev_lw hb) (ev_mul2 h2 (ev_cw _ 8))]

theorem toNat_jdAddr {Q PC : BitVec 64} (h : Q.toNat + PC.toNat / 64 * 8 < 2 ^ 64) :
    (Q + (PC >>> (6 : Nat)) * BitVec.ofNat 64 8).toNat = Q.toNat + PC.toNat / 64 * 8 := by
  have e2 : (PC >>> (6 : Nat)).toNat = PC.toNat / 64 := by
    rw [BitVec.toNat_ushiftRight, Nat.shiftRight_eq_div_pow]
  have e3 : ((PC >>> (6 : Nat)) * BitVec.ofNat 64 8).toNat = PC.toNat / 64 * 8 := by
    rw [BitVec.toNat_mul, e2, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (a := 8) (by decide),
      Nat.mod_eq_of_lt (by omega)]
  rw [toNat_add2 (by rw [e3]; omega), e3]

/-! ## The scan loop -/

/-- The scan state: `bm = Q`, `n = N`. -/
def JdJ (Q N : BitVec 64) (m : Locals) : Prop :=
  m.lookup bmN = some (.val (.word Q)) ∧ m.lookup nN = some (.val (.word N))

/-- ... and `pc = PC`. -/
def JdJb (Q N PC : BitVec 64) (m : Locals) : Prop :=
  ∀ q ∈ [(bmN, ValueHOL.val (.word Q)), (nN, .val (.word N)), (pcN, .val (.word PC))],
    m.lookup q.1 = some q.2

theorem jdJb_stable (Q N PC : BitVec 64) : Stable [bmN, nN, pcN] (JdJb Q N PC) :=
  stable_fixed (by simp)

theorem jdJb_iff {Q N PC : BitVec 64} {m : Locals} :
    JdJb Q N PC m ↔ m.lookup bmN = some (.val (.word Q)) ∧ m.lookup nN = some (.val (.word N)) ∧
      m.lookup pcN = some (.val (.word PC)) := by
  simp [JdJb]

/-- One scan step from `pc = PC < N`: the store hits the bitmap `[Q, Q + sz)`. -/
theorem hoareG_jdStep (hA : AlignedDom X) {Q N PC : BitVec 64} {Rf : BitVec 64 → Prop}
    {s0 : State σ} (hPC : PC.toNat < N.toNat)
    (hQ : Q.toNat + ((N.toNat + 63) / 64 * 8 + 8) < 2 ^ 64)
    (hR : ∀ a, Overlap Q.toNat ((N.toNat + 63) / 64 * 8 + 8) a → Rf a) :
    HoareG σ X (LPre Rf s0 (JdJb Q N PC))
      (.dec opN .one (.loadByte (offI codeN pcN 0))
        (.dec advN .one (cw 1)
          (.seq (.ite (.cmp .equal (lv opN) (cw 91)) jdStore jdElse)
            (.assign .local pcN (.op .add [lv pcN, lv advN])))))
      (LN Rf s0 (JdJ Q N)) := by
  have hst := jdJb_stable Q N PC
  have hJ : ∀ m x old, [bmN, nN, pcN].contains x = false → JdJ Q N m →
      JdJ Q N (m.resVarEq (x, old)) := by
    intro m x old hx ⟨h1, h2⟩
    have hx1 : x ≠ bmN := by rintro rfl; simp at hx
    have hx2 : x ≠ nN := by rintro rfl; simp at hx
    exact ⟨by rw [lookup_resVarEq_ne _ _ hx1]; exact h1, by rw [lookup_resVarEq_ne _ _ hx2]; exact h2⟩
  refine hoareG_decN (L' := fun _ => JdJ Q N) (fun s _ hL v _ _ => ?_)
    (fun m m' _ h => hJ m' opN _ (by decide) h)
  refine hoareG_preN (L' := JdJb Q N PC) ?_ fun m h => h ▸ (hst _ opN (by decide) hL).1 v
  refine hoareG_decN (L' := fun _ => JdJ Q N) (fun s _ hL v _ _ => ?_)
    (fun m m' _ h => hJ m' advN _ (by decide) h)
  refine hoareG_preN (L' := JdJb Q N PC) ?_ fun m h => h ▸ (hst _ advN (by decide) hL).1 v
  refine hoareG_seqN (L2 := JdJb Q N PC) ?_ ?_
  · refine hoareG_ite ?_ (hoareG_pre (hoareG_pure hst _ pure_jdElse) fun _ _ h => h.1)
    refine hoareG_pre (P := LPre Rf s0 (JdJb Q N PC)) ?_ fun _ _ h => h.1
    refine hoareG_store fun t hs hpre w v mem ha hv hstm => ?_
    obtain ⟨hb, -, hp⟩ := jdJb_iff.mp hpre.1
    obtain ⟨x, rfl⟩ := ev_op_word hv
    rw [flattenHOL] at hstm
    obtain ⟨hm, hdom⟩ := store1_mod hstm
    have hal : w.toNat % 8 = 0 := hA w (hs.2.1 ▸ hdom)
    rw [ev_jdAddr hb hp] at ha
    cases ha
    have hdiv : PC.toNat / 64 ≤ (N.toNat + 63) / 64 := Nat.div_le_div_right (by omega)
    have hw := toNat_jdAddr (Q := Q) (PC := PC) (by omega)
    have hov : Overlap Q.toNat ((N.toNat + 63) / 64 * 8 + 8)
        (Q + (PC >>> (6 : Nat)) * BitVec.ofNat 64 8) :=
      overlap_word hal (by rw [hw]; omega) (by rw [hw]; omega)
    exact ⟨rfl, hpre.1, hpre.2.1, hpre.2.2.trans (hm.mono fun a ha' => ha' ▸ hR _ hov)⟩
  · refine hoareG_assignN fun t _ hL w _ => ?_
    obtain ⟨hb, hn, -⟩ := jdJb_iff.mp hL
    exact ⟨by rw [lookup_update_ne _ _ (by decide)]; exact hb,
      by rw [lookup_update_ne _ _ (by decide)]; exact hn⟩

/-! ## The body -/

theorem ptrsOf_of_globals {s t : State σ} (h : t.globals = s.globals) : ptrsOf t = ptrsOf s := by
  unfold ptrsOf gword; rw [h]

/-- What a good result did: the allocator moved monotonically, only cells unallocated at entry
changed, and no global other than `scratch_ptr` changed. -/
def AllocPost (p : Ptrs) (s t : State σ) : Prop :=
  ∃ p', ptrsOf t = some p' ∧ p'.Ordered ∧ p.Mono p' ∧
    (∀ g, g ≠ gScratch → t.globals.lookup g = s.globals.lookup g) ∧
    ModifiesOnly (fun a => ¬ p.Allocated a.toNat) s.memory t.memory

theorem hoareG_jd (hC : X.code.lookup = guestCode) (hA : AlignedDom X) {s0 : State σ} {p : Ptrs}
    (hp : ptrsOf s0 = some p) (hord : p.Ordered) {N : BitVec 64} (hN : N.toNat + 63 < 2 ^ 64)
    (hn : s0.locals.lookup nN = some (.val (.word N))) :
    HoareG σ X (fun t => t = s0) jdBody (fun _ t => AllocPost p s0 t) := by
  have hse : scratchEnd < 2 ^ 63 := by decide
  have hSZ := toNat_jdSz hN
  refine hoareG_decCall (allocSpec_scratch_alloc hC) ?_ ?_
  · intro s _ hs vs hvs callee v st hR _ _
    subst s
    rw [evs_one (ev_jdSz hn) hvs] at hR
    obtain ⟨hmem, hgl, p', hp', hord', hmono, hret⟩ := hR (by simp [Good]) _ p rfl hp hord
    obtain ⟨Q, rfl, hQal, hlive, hfresh⟩ := hret _ rfl
    rw [hSZ] at hlive hfresh
    have hlive' := hlive
    simp only [Region.Live] at hlive'
    let SZn := (N.toNat + 63) / 64 * 8 + 8
    let s1 : State σ := { st with locals := s0.locals }
    let Rf : BitVec 64 → Prop := Overlap Q.toNat SZn
    have hRf : ∀ a, Rf a → ¬ p.Allocated a.toNat := by
      intro a ⟨ha8, h1, h2⟩
      exact hfresh _ (by omega) (by omega)
    -- from the footprint after the allocation to the post
    refine hoareG_conseq (P := LPre Rf s1 (JdJ Q N)) (Q := LQ Rf s1 (fun _ => True) (fun _ => True))
      ?_ ?_ ?_
    · refine hoareG_seqL (L2 := JdJ Q N) ?_ ?_
      · refine hoareG_callFoot (foot_memzero hC hA) fun t _ hpre vs' hvs' => ?_
        obtain ⟨hb, hn'⟩ := hpre.1
        rw [evs_cons (ev_lw hb) (evs_cons (ev_jdSz hn') evs_nil)] at hvs'
        cases hvs'
        refine ⟨⟨_, _, rfl, rfl, by rw [hSZ]; omega⟩, fun a ⟨D2, N2, hD2, hN2, hov⟩ => ?_⟩
        cases hD2
        cases hN2
        rw [hSZ] at hov
        exact hov
      · refine hoareG_decL (L' := fun _ _ => True) (Lout := fun _ => True) ?_
          (fun _ _ _ _ => trivial)
        intro s _ hL v _ _
        refine hoareG_preL (L' := JdJ Q N) ?_ fun m h => by
          subst h
          exact ⟨by rw [lookup_update_ne _ _ (by decide)]; exact hL.1,
            by rw [lookup_update_ne _ _ (by decide)]; exact hL.2⟩
        refine hoareG_seqL (L2 := fun _ => True) ?_ hoareG_returnL
        refine hoareG_whileN ?_ (fun _ _ _ _ => trivial)
        intro t ht ⟨hpre, hc⟩
        obtain ⟨w, hw, hw0⟩ := hc
        obtain ⟨x, y, hx, hy, hxy⟩ := cmp_true hw hw0
        rw [ev_lw hpre.1.2] at hy
        cases hy
        have hPC := lower_true hxy
        exact hoareG_jdStep (PC := x) hA hPC (by omega) (fun a h => h) t ht
          ⟨jdJb_iff.mpr ⟨hpre.1.1, hpre.1.2, hx⟩, hpre.2⟩
    · intro t _ ht
      subst t
      exact ⟨⟨lk_set_self _ _ _, by rw [lk_set_ne _ _ (by decide)]; exact hn⟩, rfl, fun _ _ => rfl⟩
    · rintro r t _ _ ⟨⟨hgl', hmod'⟩, -⟩
      refine ⟨p', ?_, hord', hmono, fun g hg => ?_, ?_⟩
      · refine (ptrsOf_of_globals ?_).trans hp'
        exact hgl'
      · show t.globals.lookup g = _
        rw [hgl']
        exact hgl g hg
      · intro a ha
        show t.memory a = s0.memory a
        rw [hmod' a (fun h => ha (hRf a h))]
        exact (congrFun hmem a).trans rfl
  · intro s _ hs vs hvs callee r st hR _ habn
    subst s
    rw [evs_one (ev_jdSz hn) hvs] at hR
    obtain ⟨hmem, hgl, p', hp', hord', hmono, -⟩ := hR (abn_good habn) _ p rfl hp hord
    refine ⟨p', hp', hord', hmono, hgl, fun a _ => ?_⟩
    exact (congrFun hmem a).trans rfl

/-! ## The summary -/

/-- `compute_jumpdests` needs `n + 63 < 2^64`. -/
def JdPre (vs : List (ValueHOL 64)) (_ : State σ) (_ : Gam) : Prop :=
  ∀ N : BitVec 64, argW vs 1 = some N → N.toNat + 63 < 2 ^ 64

def sigJumpdests : Sig := { params := [.any, .any], grows := false }

theorem sumSpec_compute_jumpdests {C : Cfg} {H : Hooks σ} (hH : HooksLawful C H)
    (hAG : AllocGlobs C) (hC : X.code.lookup = guestCode) (hA : AlignedDom X) :
    SumSpec σ X C H (nm "compute_jumpdests") sigJumpdests JdPre (fun _ _ _ _ => False)
      (fun _ _ _ _ _ _ => True) := by
  intro vs body callee rs hl s hs hloc r hr hg Γ hG ⟨p, hp, _⟩ hpre
  have hl' := hl
  rw [hC] at hl'
  obtain ⟨rfl, -, A, B, rfl, -, hB, -, hlb⟩ := lookupCode_two code_compute_jumpdests (by decide) hl'
  obtain ⟨N, rfl⟩ := val_of_shapeEq_one hB
  have hN := hpre N rfl
  have hord : p.Ordered := by
    obtain ⟨p0, hp0, hord, -⟩ := hG
    rw [hp] at hp0
    cases hp0
    exact hord
  have hpost := hoareG_jd hC hA hp hord hN (by rw [hloc]; exact hlb) s hs rfl
    (by rw [hr]; exact hg)
  obtain ⟨p', hp', hord', hmono, hgl, hmod⟩ := hpost
  have hd := memaddrs_preserved s jdBody
  have hbe := Spec.Inv.be_preserved s jdBody
  have hnS : ∀ g ∈ C.PG, g ≠ gScratch := fun g hg h => (hAG g (by simp [h])).1 (h ▸ hg)
  refine ⟨Γ, p, p', ⟨hp, hp', hmono, fun o ho => ⟨o, ho, rfl, rfl, Nat.le_refl _⟩, newFresh_same,
    G_alloc hH hAG hG hp hp' hord' hmono (fun g _ _ h3 => hgl g h3) hd hbe hmod,
    hmod.mono fun a ha => Or.inr (Or.inr (Or.inl ha)), fun g hg _ => hgl g (hnS g hg),
    fun _ => newFresh_same, ?_⟩, trivial⟩
  intro v _ i rt w hrt
  simp [sigJumpdests] at hrt

end InitECandidate.Solver.MemSafe.Helpers
