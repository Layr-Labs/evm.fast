import InitECandidate.Solver.MemSafe.Helpers.Digits

set_option autoImplicit false

/-!
# `digits_divmod`: the u256 division driver into `divmnu`

`digits_divmod(u, m, d)` splits `d` into 32-bit digits at `u256_ws + 560`, counts the digits of
`d` and of the dividend `u[0, m)`, zeroes the quotient `u256_ws[216, 344)` and the remainder
`u256_ws[352, 416)`, calls `divmnu` and returns the remainder (or the dividend itself when it
has fewer digits than `d`).

* `pureSpec_digits_to_u256`.
* `hoareG_callFootS`, `hoareG_decCallRO`: call rules for a state-dependent footprint spec and
  for a read-only callee whose return value depends on the memory.
* `footS_digits_divmod : FootSpecS DDPre DDR`: for `m ≤ 16` and `d ≠ 0`, the call writes only
  `u256_ws[0, 640)`.
* `sumSpec_digits_divmod`: the summary, given `ScalarGlob C (nm "u256_ws") 640` (the guest
  allocates 640 bytes).
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

/-! ## `digits_to_u256` -/

theorem name_digits_to_u256 :
    (fnEntry Guest.Software.guestFn_digits_to_u256).1 = nm "digits_to_u256" := rfl

set_option maxHeartbeats 0 in
set_option cbv.maxSteps 4000000000 in
theorem pureF_digits_to_u256 :
    pureF (fnEntry Guest.Software.guestFn_digits_to_u256).2.2.1 = true := by
  decide_cbv

theorem pureSpec_digits_to_u256 (hC : X.code.lookup = guestCode) :
    PureSpec σ X (nm "digits_to_u256") :=
  name_digits_to_u256 ▸ pureSpec_decl hC (List.getElem_mem (l := Guest.Software.guestAst)
    (n := 65) (by decide)) ⟨_, rfl⟩ pureF_digits_to_u256

/-! ## Call rules -/

/-- `f(args);` for a callee with a state-dependent footprint spec. -/
theorem hoareG_callFootS {f : MlS} {args : List (ExpHOL 64)}
    {Pre : List (ValueHOL 64) → State σ → Prop}
    {R : List (ValueHOL 64) → State σ → BitVec 64 → Prop} (hf : FootSpecS σ X f Pre R)
    {Rf : BitVec 64 → Prop} {s0 : State σ} {L : Locals → Prop} {Ret : ValueHOL 64 → Prop}
    (h : ∀ s : State σ, InCtx s X → LPre Rf s0 L s → ∀ vs, evs s args = some vs →
      ∀ callee, Pre vs (callEntryStateHOLFinite s callee) ∧
        ∀ a, R vs (callEntryStateHOLFinite s callee) a → Rf a) :
    HoareG σ X (LPre Rf s0 L) (.call (some (none, none)) f args) (LQ Rf s0 L Ret) := by
  refine hoareG_callD hf ?_ ?_
  · intro s hs hpre vs hvs callee v st hR _
    obtain ⟨hP, hsub⟩ := h s hs hpre vs hvs callee
    obtain ⟨hgl, hmod⟩ := hR (by simp [Good]) hP
    exact ⟨⟨hgl.trans hpre.2.1, hpre.2.2.trans (hmod.mono hsub)⟩, fun _ => hpre.1,
      fun _ h => nomatch h⟩
  · intro s hs hpre vs hvs callee r st hR _ habn
    obtain ⟨hP, hsub⟩ := h s hs hpre vs hvs callee
    obtain ⟨hgl, hmod⟩ := hR (abn_good habn) hP
    exact ⟨⟨hgl.trans hpre.2.1, hpre.2.2.trans (hmod.mono hsub)⟩, (fun h => nomatch h),
      fun v hv => absurd (Option.some.inj hv) (abn_ne_returned habn v)⟩

/-- `var rn = f(args); k` for a callee that changes neither memory nor globals and whose
return value satisfies `RetF vs mem` for the memory `mem` at the call. -/
theorem hoareG_decCallRO {f rn : MlS} {sh : ShapeHOL} {args : List (ExpHOL 64)}
    {k : ProgHOL 64} {RetF : List (ValueHOL 64) → Mem → ValueHOL 64 → Prop}
    (hf : FunSpec σ X f (fun vs s r t => Good (some r) →
      t.globals = s.globals ∧ t.memory = s.memory ∧ ∀ v, r = .returned v → RetF vs s.memory v))
    {Rf : BitVec 64 → Prop} {s0 : State σ} {P : State σ → Prop} {Lout : Locals → Prop}
    {L' : Locals → Locals → Prop} {Ret : ValueHOL 64 → Prop}
    (hP : ∀ s, P s → BWPost Rf s0 s)
    (hk : ∀ (s : State σ) vs v, InCtx s X → P s → evs s args = some vs → RetF vs s.memory v →
      shapeEqHOL (shapeOfHOLExact v) sh = true →
      HoareG σ X (LPre Rf s0 (fun m' => m' = s.locals.update (rn, v))) k
        (LQ Rf s0 (L' s.locals) Ret))
    (hout : ∀ (s : State σ) m', P s → L' s.locals m' →
      Lout (m'.resVarEq (rn, s.locals.lookup rn))) :
    HoareG σ X P (.decCall rn sh f args k) (LQ Rf s0 Lout Ret) := by
  refine hoareG_decCall hf ?_ ?_
  · intro s hs hpre vs hvs callee v st hR _ hsh
    obtain ⟨hgl, hm, hret⟩ := hR (by simp [Good])
    have hbw := hP s hpre
    refine hoareG_conseq (hk s vs v hs hpre hvs (hret v rfl) hsh) (fun t _ ht => ?_) ?_
    · subst ht
      exact ⟨rfl, hgl.trans hbw.1, fun a ha => by
        show st.memory a = _
        rw [hm]
        exact hbw.2 a ha⟩
    · intro r t _ _ hq
      exact ⟨hq.1, fun hr => hout s _ hpre (hq.2.1 hr), hq.2.2⟩
  · intro s _ hpre vs _ callee r st hR _ habn
    obtain ⟨hgl, hm, -⟩ := hR (abn_good habn)
    have hbw := hP s hpre
    refine ⟨⟨hgl.trans hbw.1, fun a ha => ?_⟩, (fun h => nomatch h),
      fun v hv => absurd (Option.some.inj hv) (abn_ne_returned habn v)⟩
    show st.memory a = _
    rw [hm]
    exact hbw.2 a ha

/-! ## Zeroing loops `while i < K { b[i] = 0; i += 1 }` -/

def ddZero (b : String) (k : Nat) : ProgHOL 64 :=
  .while (.cmp .lower (lv (nm "i")) (cw k))
    (.seq (.store (ixA b (lv (nm "i"))) (cw 0))
      (.assign .local (nm "i") (.op .add [lv (nm "i"), cw 1])))

theorem hoareG_ddZero (hA : AlignedDom X) {b : String} {K : Nat} {B : BitVec 64}
    {Rf : BitVec 64 → Prop} {s0 : State σ} {L : Locals → Prop} {Ret : ValueHOL 64 → Prop}
    (hK : K < 2 ^ 32)
    (hLb : ∀ m, L m → m.lookup (nm b) = some (.val (.word B)))
    (hLi : ∀ m v, L m → L (m.update (nm "i", v)))
    (hB : B.toNat + 8 * K < 2 ^ 64) (hR : ∀ a, Overlap B.toNat (8 * K) a → Rf a) :
    HoareG σ X
      (LPre Rf s0 (fun m => L m ∧ ∃ I : BitVec 64, m.lookup (nm "i") = some (.val (.word I))))
      (ddZero b K)
      (LQ Rf s0 (fun m => L m ∧ ∃ I : BitVec 64, m.lookup (nm "i") = some (.val (.word I)))
        Ret) := by
  refine hoareG_whileN ?_ (fun _ _ h _ => h)
  intro t ht hpc hg
  obtain ⟨⟨⟨hL, I, hI⟩, hbw⟩, hc⟩ := hpc
  have hIK : I.toNat < K := by
    obtain ⟨w, hw, hw0⟩ := hc
    obtain ⟨x, y, hx, hy, hxy⟩ := cmp_true hw hw0
    rw [ev_lw hI] at hx
    cases hx
    rw [ev_cw] at hy
    cases hy
    have h := lower_true hxy
    rwa [BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega)] at h
  refine hoareG_seqN (L1 := fun m => L m ∧ m.lookup (nm "i") = some (.val (.word I)))
    (L2 := fun m => L m ∧ m.lookup (nm "i") = some (.val (.word I))) ?_ ?_
    t ht ⟨⟨hL, hI⟩, hbw⟩ hg
  · refine hoareG_stIxN hA (B := B) (nb := 8 * K) (fun m h => hLb m h.1) ?_ (by omega) hR
      (oneWordL_of (oneWord_cw 0))
    intro t' h x hx
    rw [ev_lw h.2] at hx
    cases hx
    omega
  · refine hoareG_assignN fun s _ h v hv => ⟨hLi _ _ h.1, ?_⟩
    rw [ev_add2 (ev_lw h.2) (ev_cw _ 1)] at hv
    cases hv
    exact ⟨_, lookup_update_self _ _ _⟩

/-! ## `digits_divmod` -/

def ddTail : ProgHOL 64 :=
  .seq (ddZero "q" 16)
  (.seq (.ite (.cmp .lower (lv (nm "mm")) (lv (nm "n")))
      (.call none (nm "digits_to_u256") [lv (nm "u")]) .skip)
  (.seq (.assign .local (nm "i") (cw 0))
  (.seq (ddZero "r" 8)
  (.seq (.call (some (none, none)) (nm "divmnu")
      [lv (nm "q"), lv (nm "r"), lv (nm "u"), lv (nm "mm"), lv (nm "v"), lv (nm "n")])
    (.call none (nm "digits_to_u256") [lv (nm "r")])))))

def ddBody : ProgHOL 64 :=
  .dec (nm "q") .one (.op .add [.var .global (nm "u256_ws"), cw 216])
  (.dec (nm "r") .one (.op .add [.var .global (nm "u256_ws"), cw 352])
  (.dec (nm "v") .one (.op .add [.var .global (nm "u256_ws"), cw 560])
  (.seq (.call (some (none, none)) (nm "u256_to_digits") [lv (nm "v"), lv (nm "d")])
  (.decCall (nm "n") .one (nm "digits_len") [lv (nm "v"), cw 8]
  (.decCall (nm "mm") .one (nm "digits_len") [lv (nm "u"), lv (nm "m")]
  (.dec (nm "i") .one (cw 0) ddTail))))))

theorem entry_digits_divmod : fnEntry Guest.Software.guestFn_digits_divmod =
    (nm "digits_divmod", [(nm "u", .one), (nm "m", .one), (nm "d", shK 4)], ddBody, shK 4) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_digits_divmod : guestCode (nm "digits_divmod") =
    some ([(nm "u", .one), (nm "m", .one), (nm "d", shK 4)], ddBody, shK 4) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 68) (by decide)) ⟨_, rfl⟩
    entry_digits_divmod

/-- The fixed locals: the arguments and the three workspace pointers. -/
def DDK (U M W : BitVec 64) (as : List (BitVec 64)) (m : Locals) : Prop :=
  m.lookup (nm "u") = some (.val (.word U)) ∧ m.lookup (nm "m") = some (.val (.word M)) ∧
    m.lookup (nm "d") = some (wv as) ∧
    m.lookup (nm "q") = some (.val (.word (W + BitVec.ofNat 64 216))) ∧
    m.lookup (nm "r") = some (.val (.word (W + BitVec.ofNat 64 352))) ∧
    m.lookup (nm "v") = some (.val (.word (W + BitVec.ofNat 64 560)))

def ddW : List MlS := [nm "u", nm "m", nm "d", nm "q", nm "r", nm "v"]

theorem ddK_upd {U M W : BitVec 64} {as : List (BitVec 64)} {m : Locals} {x : MlS}
    (v : ValueHOL 64) (hx : x ∉ ddW) (h : DDK U M W as m) : DDK U M W as (m.update (x, v)) := by
  have hne : ∀ y ∈ ddW, (m.update (x, v)).lookup y = m.lookup y :=
    fun y hy => lookup_update_ne _ _ fun hxy => hx (by rw [hxy]; exact hy)
  obtain ⟨h1, h2, h3, h4, h5, h6⟩ := h
  refine ⟨?_, ?_, ?_, ?_, ?_, ?_⟩ <;> rw [hne _ (by simp [ddW])] <;> assumption

/-- With the digit counts `n` and `mm`. -/
def DDN (U M W : BitVec 64) (as : List (BitVec 64)) (Nn MM : BitVec 64) (m : Locals) : Prop :=
  DDK U M W as m ∧ m.lookup (nm "n") = some (.val (.word Nn)) ∧
    m.lookup (nm "mm") = some (.val (.word MM))

theorem ddN_updi {U M W Nn MM : BitVec 64} {as : List (BitVec 64)} {m : Locals}
    (v : ValueHOL 64) (h : DDN U M W as Nn MM m) :
    DDN U M W as Nn MM (m.update (nm "i", v)) :=
  ⟨ddK_upd v (by decide) h.1, by rw [lookup_update_ne _ _ (by decide)]; exact h.2.1,
    by rw [lookup_update_ne _ _ (by decide)]; exact h.2.2⟩

theorem scratchEnd_lt : scratchEnd < 2 ^ 64 := by decide

theorem gword_of_globals {s t : State σ} {g : MlS} {W : BitVec 64}
    (h : gword s g = some W) (he : t.globals = s.globals) : gword t g = some W := by
  unfold gword at h ⊢
  rw [he]
  exact h

theorem ev_gword {s : State σ} {g : MlS} {W : BitVec 64} (h : gword s g = some W) :
    ev s (.var .global g) = some (.val (.word W)) := by
  rw [ev_gv]
  unfold gword at h
  split at h
  · rename_i w hw; cases h; exact hw
  · cases h

/-- The part after the digit counts: zero `q` and `r`, call `divmnu`, return. -/
theorem hoareG_ddTail (hC : X.code.lookup = guestCode) (hA : AlignedDom X)
    {s0 : State σ} {U M W Nn MM : BitVec 64} {as : List (BitVec 64)}
    (hW : gword s0 wsN = some W) (hWe : W.toNat + 640 ≤ scratchEnd)
    (hN1 : 1 ≤ Nn.toNat) (hN8 : Nn.toNat ≤ 8) (hMM : MM.toNat ≤ 16) :
    HoareG σ X (LPre (fun a => Overlap W.toNat 640 a) s0
        (fun m => DDN U M W as Nn MM m ∧
          ∃ I : BitVec 64, m.lookup (nm "i") = some (.val (.word I))))
      ddTail (LQ (fun a => Overlap W.toNat 640 a) s0 (fun _ => False) (fun _ => True)) := by
  have hse := scratchEnd_lt
  have hQ : (W + BitVec.ofNat 64 216).toNat = W.toNat + 216 := toNat_addc (by omega)
  have hRr : (W + BitVec.ofNat 64 352).toNat = W.toNat + 352 := toNat_addc (by omega)
  have hpure := footRet_of_foot (pureSpec_digits_to_u256 (σ := σ) hC).foot
  unfold ddTail
  refine hoareG_seqL (hoareG_ddZero hA (b := "q") (K := 16) (B := W + BitVec.ofNat 64 216)
    (by decide) (fun m h => h.1.2.2.2.1) (fun m v h => ddN_updi v h) (by rw [hQ]; omega)
    (fun a h => overlap_mono h (by rw [hQ]; omega) (by rw [hQ]; omega))) ?_
  refine hoareG_seqL (L2 := fun m => (DDN U M W as Nn MM m ∧
      ∃ I : BitVec 64, m.lookup (nm "i") = some (.val (.word I))) ∧ Nn.toNat ≤ MM.toNat) ?_ ?_
  · refine hoareG_ite ?_ ?_
    · exact hoareG_pre (hoareG_tailFoot hpure fun _ _ _ _ _ =>
        ⟨trivial, fun _ h => h.elim, fun _ _ => trivial⟩) fun _ _ h => h.1
    · refine hoareG_skip fun t _ h => ?_
      obtain ⟨hpre, hc⟩ := h
      refine ⟨hpre.2, fun _ => ⟨hpre.1, ?_⟩, fun _ h => nomatch h⟩
      obtain ⟨x, y, hx, hy, hxy⟩ := cmp_false hc
      rw [ev_lw hpre.1.1.2.2] at hx
      cases hx
      rw [ev_lw hpre.1.1.2.1] at hy
      cases hy
      exact lower_false hxy
  refine hoareG_seqL (L2 := fun m => (DDN U M W as Nn MM m ∧ Nn.toNat ≤ MM.toNat) ∧
      ∃ I : BitVec 64, m.lookup (nm "i") = some (.val (.word I))) ?_ ?_
  · refine hoareG_assignL fun s _ h v hv => ?_
    rw [ev_cw] at hv
    cases hv
    exact ⟨⟨ddN_updi _ h.1.1, h.2⟩, _, lookup_update_self _ _ _⟩
  refine hoareG_seqL (hoareG_ddZero hA (b := "r") (K := 8) (B := W + BitVec.ofNat 64 352)
    (L := fun m => DDN U M W as Nn MM m ∧ Nn.toNat ≤ MM.toNat)
    (by decide) (fun m h => h.1.1.2.2.2.2.1) (fun m v h => ⟨ddN_updi v h.1, h.2⟩)
    (by rw [hRr]; omega)
    (fun a h => overlap_mono h (by rw [hRr]; omega) (by rw [hRr]; omega))) ?_
  refine hoareG_seqL (hoareG_callFootS (footS_divmnu hC hA) ?_) ?_
  · intro s _ hpre vs hvs callee
    obtain ⟨⟨⟨⟨hu, -, -, hq, hr, hv⟩, hn, hmm⟩, hle⟩, -⟩ := hpre.1
    rw [evs_cons (ev_lw hq) (evs_cons (ev_lw hr) (evs_cons (ev_lw hu) (evs_cons (ev_lw hmm)
      (evs_cons (ev_lw hv) (evs_cons (ev_lw hn) evs_nil)))))] at hvs
    cases hvs
    have hgw : gword (callEntryStateHOLFinite s callee) wsN = some W :=
      gword_of_globals hW hpre.2.1
    refine ⟨⟨_, _, _, _, W, rfl, rfl, rfl, rfl, hgw, hN1,
      fun _ => ⟨Or.inr (by rw [hQ]; omega), by rw [hRr]; omega⟩,
      fun h2 => ⟨h2, hle, by omega, hN8, by omega, by rw [hQ]; omega, by rw [hRr]; omega⟩⟩, ?_⟩
    rintro a ⟨Q', Rr', M', N', W', hQ', hR', hM', hN', hW', hov⟩
    cases hQ'
    cases hR'
    cases hM'
    cases hN'
    rw [hgw] at hW'
    cases hW'
    rcases hov with h | h | h
    · exact overlap_mono h (by rw [hQ]; omega) (by rw [hQ]; omega)
    · exact overlap_mono h (by rw [hRr]; omega) (by rw [hRr]; omega)
    · exact overlap_mono h (by omega) (by omega)
  · exact hoareG_tailFoot hpure fun _ _ _ _ _ => ⟨trivial, fun _ h => h.elim, fun _ _ => trivial⟩

/-- The digits of `as` are at `V + 8 k`, `k < 8`. -/
def Digs (V : BitVec 64) (as : List (BitVec 64)) (m : Mem) : Prop :=
  ∀ k, k < 8 → rd m (V + BitVec.ofNat 64 (8 * k)) = digit as k

theorem hoareG_ddBody (hC : X.code.lookup = guestCode) (hA : AlignedDom X)
    {s0 : State σ} {U M W : BitVec 64} {as : List (BitVec 64)}
    (hW : gword s0 wsN = some W) (hWe : W.toNat + 640 ≤ scratchEnd) (hM : M.toNat ≤ 16)
    (hlen : as.length = 4) (hnz : ∃ j, ∃ h : j < as.length, as[j] ≠ 0) :
    HoareG σ X (LPre (fun a => Overlap W.toNat 640 a) s0
        (fun m => m.lookup (nm "u") = some (.val (.word U)) ∧
          m.lookup (nm "m") = some (.val (.word M)) ∧ m.lookup (nm "d") = some (wv as)))
      ddBody (LQ (fun a => Overlap W.toNat 640 a) s0 (fun _ => False) (fun _ => True)) := by
  have hse := scratchEnd_lt
  have hV : (W + BitVec.ofNat 64 560).toNat = W.toNat + 560 := toNat_addc (by omega)
  have hgw : ∀ t : State σ, BWPost (fun a => Overlap W.toNat 640 a) s0 t →
      ev t (.var .global (nm "u256_ws")) = some (.val (.word W)) :=
    fun t h => ev_gword (gword_of_globals hW h.1)
  unfold ddBody
  refine hoareG_decL' (L' := fun _ _ => False) (fun s _ hpre v hv _ => ?_) (fun _ _ _ h => h.elim)
  rw [ev_add2 (hgw s hpre.2) (ev_cw _ 216)] at hv
  cases hv
  refine hoareG_decL' (L' := fun _ _ => False) (fun s1 _ hpre1 v hv _ => ?_)
    (fun _ _ _ h => h.elim)
  rw [ev_add2 (hgw s1 hpre1.2) (ev_cw _ 352)] at hv
  cases hv
  refine hoareG_decL' (L' := fun _ _ => False) (fun s2 _ hpre2 v hv _ => ?_)
    (fun _ _ _ h => h.elim)
  rw [ev_add2 (hgw s2 hpre2.2) (ev_cw _ 560)] at hv
  cases hv
  have hK : DDK U M W as (s2.locals.update (nm "v", .val (.word (W + BitVec.ofNat 64 560)))) := by
    rw [hpre2.1, hpre1.1]
    obtain ⟨hu, hm, hd⟩ := hpre.1
    refine ⟨?_, ?_, ?_, ?_, ?_, ?_⟩ <;>
      simp (disch := decide) only [lookup_update_ne, lookup_update_self] <;>
      first | exact hu | exact hm | exact hd
  refine hoareG_preL (L' := DDK U M W as) ?_ fun m h => by rw [h]; exact hK
  refine hoareG_seq (R := fun r t =>
      (r = none → LPre (fun a => Overlap W.toNat 640 a) s0 (DDK U M W as) t ∧
        Digs (W + BitVec.ofNat 64 560) as t.memory) ∧
      (r ≠ none → LQ (fun a => Overlap W.toNat 640 a) s0 (fun _ => False) (fun _ => True) r t))
    ?_ (fun r t _ hr _ h => h.2 hr) ?_
  · refine hoareG_callD (funSpec_u256_to_digits hC hA) ?_ ?_
    · intro s _ hpre vs hvs callee v st hR _
      obtain ⟨-, -, hd, -, -, hv⟩ := hpre.1
      rw [evs_cons (ev_lw hv) (evs_cons (by rw [ev_lv]; exact hd) evs_nil)] at hvs
      cases hvs
      obtain ⟨hgl, hmod, hdig⟩ := hR (by simp [Good]) _ _ rfl hlen (by rw [hV]; omega)
      exact ⟨fun _ => ⟨⟨hpre.1, hgl.trans hpre.2.1, hpre.2.2.trans (hmod.mono fun a h =>
        overlap_mono h (by rw [hV]; omega) (by rw [hV]; omega))⟩, hdig⟩,
        fun hne => absurd rfl hne⟩
    · intro s _ hpre vs hvs callee r st hR _ habn
      obtain ⟨-, -, hd, -, -, hv⟩ := hpre.1
      rw [evs_cons (ev_lw hv) (evs_cons (by rw [ev_lv]; exact hd) evs_nil)] at hvs
      cases hvs
      obtain ⟨hgl, hmod, -⟩ := hR (abn_good habn) _ _ rfl hlen (by rw [hV]; omega)
      exact ⟨(fun h => nomatch h), fun _ => ⟨⟨hgl.trans hpre.2.1, hpre.2.2.trans (hmod.mono
        fun a h => overlap_mono h (by rw [hV]; omega) (by rw [hV]; omega))⟩, (fun h => nomatch h),
        fun v hv => absurd (Option.some.inj hv) (abn_ne_returned habn v)⟩⟩
  -- `n = digits_len(v, 8)`: `1 ≤ n ≤ 8` since `d ≠ 0`
  refine hoareG_decCallRO (funSpec_digits_len hC) (L' := fun _ _ => False)
    (fun s h => (h.1 rfl).1.2) ?_ (fun _ _ _ h => h.elim)
  intro s vs v _ hpre hvs hret _
  obtain ⟨⟨hK, -⟩, hdig⟩ := hpre.1 rfl
  have hK' := hK
  obtain ⟨hu, hm, -, -, -, hv⟩ := hK'
  rw [evs_cons (ev_lw hv) (evs_cons (ev_cw _ 8) evs_nil)] at hvs
  cases hvs
  have h8 : (BitVec.ofNat 64 8).toNat = 8 := rfl
  obtain ⟨Nn, rfl, hN8, hN0⟩ := hret _ _ rfl
  rw [h8] at hN8
  have hN1 : 1 ≤ Nn.toNat := by
    by_contra h0
    have hz := hN0 (by omega)
    rw [h8] at hz
    obtain ⟨j, hj, hj0⟩ := hnz
    rcases digit_ne_zero hj hj0 with h | h
    · exact h (by rw [← hdig (2 * j) (by omega)]; exact hz (2 * j) (Nat.zero_le _) (by omega))
    · exact h (by
        rw [← hdig (2 * j + 1) (by omega)]; exact hz (2 * j + 1) (Nat.zero_le _) (by omega))
  -- `mm = digits_len(u, m)`: `mm ≤ m ≤ 16`
  refine hoareG_decCallRO (funSpec_digits_len hC) (L' := fun _ _ => False)
    (fun s h => h.2) ?_ (fun _ _ _ h => h.elim)
  intro s' vs v _ hpre' hvs hret _
  have hu' : s'.locals.lookup (nm "u") = some (.val (.word U)) := by
    rw [hpre'.1, lookup_update_ne _ _ (by decide)]; exact hu
  have hm' : s'.locals.lookup (nm "m") = some (.val (.word M)) := by
    rw [hpre'.1, lookup_update_ne _ _ (by decide)]; exact hm
  rw [evs_cons (ev_lw hu') (evs_cons (ev_lw hm') evs_nil)] at hvs
  cases hvs
  obtain ⟨MM, rfl, hMM, -⟩ := hret _ _ rfl
  -- `var i = 0`
  refine hoareG_decL' (L' := fun _ _ => False) (fun s'' _ hpre'' v hv _ => ?_)
    (fun _ _ _ h => h.elim)
  rw [ev_cw] at hv
  cases hv
  refine hoareG_preL (hoareG_ddTail (U := U) (M := M) (MM := MM) (as := as) hC hA hW hWe hN1 hN8
    (by omega)) ?_
  intro m hmeq
  rw [hmeq, hpre''.1, hpre'.1]
  refine ⟨⟨ddK_upd _ (by decide) (ddK_upd _ (by decide) (ddK_upd _ (by decide) hK)), ?_, ?_⟩,
    _, lookup_update_self _ _ _⟩ <;>
    simp (disch := decide) only [lookup_update_ne, lookup_update_self]

/-- What `digits_divmod` needs: the arguments `u, m, d` with `m ≤ 16` and `d ≠ 0`, and the
workspace below `scratchEnd`. -/
def DDPre (vs : List (ValueHOL 64)) (s : State σ) : Prop :=
  ∃ (U M W : BitVec 64) (as : List (BitVec 64)), vs = [.val (.word U), .val (.word M), wv as] ∧
    as.length = 4 ∧ gword s wsN = some W ∧ W.toNat + 640 ≤ scratchEnd ∧ M.toNat ≤ 16 ∧
    ∃ j, ∃ h : j < as.length, as[j] ≠ 0

/-- The footprint: `u256_ws[0, 640)`. -/
def DDR (_ : List (ValueHOL 64)) (s : State σ) (a : BitVec 64) : Prop :=
  ∃ W, gword s wsN = some W ∧ Overlap W.toNat 640 a

theorem footS_digits_divmod (hC : X.code.lookup = guestCode) (hA : AlignedDom X) :
    FootSpecS σ X (nm "digits_divmod") DDPre DDR := by
  refine footSpecS_of_hoareG fun vs body callee rs hl s0 _ hloc hP => ?_
  rw [hC] at hl
  obtain ⟨rfl, -, A, B, D, rfl, -, -, -, hla, hlb, hld⟩ :=
    lookupCode_three code_digits_divmod (by decide) (by decide) (by decide) hl
  obtain ⟨U, M, W, as, hvs, hlen, hW, hWe, hM, hnz⟩ := hP
  simp only [List.cons.injEq, and_true] at hvs
  obtain ⟨rfl, rfl, rfl⟩ := hvs
  refine hoareG_conseq (hoareG_ddBody (U := U) hC hA hW hWe hM hlen hnz) (fun t _ ht => ?_)
    (fun r t _ _ hq => ⟨hq.1.1, hq.1.2.mono fun a ha => ⟨W, hW, ha⟩⟩)
  subst ht
  exact ⟨⟨by rw [hloc]; exact hla, by rw [hloc]; exact hlb, by rw [hloc]; exact hld⟩, rfl,
    fun _ _ => rfl⟩

def sigDigitsDivmod : Sig := { params := [.any, .any, .any], grows := false }

/-- What the caller must know beyond `ArgsOK`: `m ≤ 16`, `d` four limbs, not all zero. -/
def DDPreS (vs : List (ValueHOL 64)) (_ : State σ) (_ : Gam) : Prop :=
  ∃ (U M : BitVec 64) (as : List (BitVec 64)), vs = [.val (.word U), .val (.word M), wv as] ∧
    as.length = 4 ∧ M.toNat ≤ 16 ∧ ∃ j, ∃ h : j < as.length, as[j] ≠ 0

theorem sumSpec_digits_divmod {C : Cfg} {H : Hooks σ} (hH : HooksLawful C H) (hT : TagSlots C)
    (hWS : ScalarGlob C wsN 640) (hC : X.code.lookup = guestCode) (hA : AlignedDom X) :
    SumSpec σ X C H (nm "digits_divmod") sigDigitsDivmod DDPreS (fun _ _ _ _ => False)
      (fun _ _ _ _ _ _ => True) := by
  refine sumSpec_of_footS hH hT rfl (footS_digits_divmod hC hA) ?_ ?_
  · intro Γ p vs s hG _ _ hPS
    obtain ⟨U, M, as, hvs, hlen, hM, hnz⟩ := hPS
    obtain ⟨W, hW, hWe, -⟩ := scell_of_glob hG hWS
    exact ⟨U, M, W, as, hvs, hlen, hW, hWe, hM, hnz⟩
  · intro Γ p vs s a hG _ _ _ hR
    obtain ⟨W', hW', ha⟩ := hR
    obtain ⟨W, hW, -, hsc⟩ := scell_of_glob hG hWS
    rw [hW] at hW'
    cases hW'
    exact Or.inr (hsc a ha)

end InitECandidate.Solver.MemSafe.Helpers
