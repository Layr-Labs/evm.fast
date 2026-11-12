import InitECandidate.Solver.MemSafe.HtabEntries.JTrk
import InitECandidate.Solver.Spec.StateRestore

/-!
# `state_restore` as a capability entry (journal family)

`csumm_state_restore`: the capability summary of `state_restore(snap)` for the journal hook
family `guestHooksJ`, signature `⟨[any], [], [journal_n], true⟩` (as in `Sigs2`), capabilities
`srCaps`: the requirement `⟨journal, tJOURNAL, [], false⟩` (the global `journal` names a `Γ`
journal array, so its hook applies) and the all-cells capabilities of every header type and
`tHTAs` (the table writes of `htab_set` / `htab_del`).

Each iteration lowers `journal_n` (`G_jn_dec`: the popped record leaves the hook, its facts
are kept), reads the record, and calls `htab_set(t, key, value)` (key: the `tB8` key copy, a
writable buffer; value: fits by the hook) or `htab_del(t, key)` through their entries; the
calls compose in `TrkJ` (`trkJ_call`, `capBack`).
-/

set_option maxRecDepth 100000

namespace InitECandidate.Solver.MemSafe.HtabEntries
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Hooks
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

/-! ## Signature, capabilities, `NoExc` -/

def capJr : Cap := ⟨gJ, tJOURNAL, [], false⟩
def tabCaps : List Cap := (hdrTys.map fun th => (⟨anyG, th, [], true⟩ : Cap)) ++ [⟨anyG, tHTAs, [], true⟩]
def srCaps : List Cap := capJr :: tabCaps
def srSig : Sig := ⟨[.any], [], [gJn], true⟩

theorem capsHT_sub {th : Nat} (hth : th ∈ hdrTys) {cs0 : List Cap} (h : ∀ c ∈ tabCaps, c ∈ cs0) :
    ∀ c ∈ capsHT th, c.ks = [] ∧ ∃ c0 ∈ cs0, c0.all = true ∧ ∀ t, AllTy c t → AllTy c0 t := by
  intro c hc
  simp only [capsHT, List.mem_cons, List.not_mem_nil, or_false] at hc
  rcases hc with rfl | rfl
  · exact ⟨rfl, _, h _ (List.mem_append_left _ (List.mem_map.mpr ⟨th, hth, rfl⟩)), rfl, fun _ h => h⟩
  · exact ⟨rfl, _, h _ (List.mem_append_right _ List.mem_cons_self), rfl, fun _ h => h⟩

theorem xchk_state_restore : xChk htabX false (declPair Guest.Software.guestFn_state_restore).2.2 = true := by
  conv => lhs; arg 3; cbv
  decide

theorem noExc_state_restore (hX : X.code.lookup = guestCode) : NoExc σ X (nm "state_restore") :=
  noExc_of_pair (noExc_htabX hX) hX (p := declPair Guest.Software.guestFn_state_restore)
    (declPair_valid (List.getElem_mem (n := 359) (by decide)) ⟨_, rfl⟩) xchk_state_restore

/-! ## Pieces -/

theorem trkJ_jn {Γ0 Γ : Gam} {s0 u : State σ} {p0 : Ptrs} {PW : BitVec 64 → Prop}
    (h : TrkJ guestHooksJ Γ0 s0 p0 PW Γ u) {J : BitVec 64}
    (hJ : u.globals.lookup gJn = some (.val (.word J))) (h1 : 1 ≤ J.toNat) :
    TrkJ guestHooksJ Γ0 s0 p0 PW Γ
      (setKvarHOLFinite .global gJn (.val (.word (J - BitVec.ofNat 64 1))) u) := by
  obtain ⟨p, hp, hm, hx, hnf, hG, hmod, hpg, hd, hbe⟩ := h
  refine ⟨p, ?_, hm, hx, hnf, G_jn_dec hG hJ h1, hmod, fun g hg hne => ?_, hd, hbe⟩
  · unfold ptrsOf
    rw [gword_setG_ne (by decide), gword_setG_ne (by decide), gword_setG_ne (by decide)]
    exact hp
  · rw [setG_ne hne]; exact hpg g hg hne

theorem trkJ_locals {Γ0 Γ : Gam} {s0 u : State σ} {p0 : Ptrs} {PW : BitVec 64 → Prop}
    (h : TrkJ guestHooksJ Γ0 s0 p0 PW Γ u) (l : HolFiniteMapExact MlS (ValueHOL 64)) :
    TrkJ guestHooksJ Γ0 s0 p0 PW Γ { u with locals := l } :=
  trkJ_congr guestHooksJ_lawful h rfl rfl rfl rfl

theorem jc_add (b : BitVec 64) (q k : Nat) : jc b q + BitVec.ofNat 64 (8 * k) = jc b (q + k) := by
  unfold jc
  rw [BitVec.add_assoc, ← BitVec.ofNat_add, Nat.mul_add]

theorem jc_rec {b n : BitVec 64} (hn : 32 * (n.toNat + 1) ≤ 2 ^ 64) :
    b + n * BitVec.ofNat 64 32 = jc b (4 * n.toNat) := by
  unfold jc
  congr 1
  apply BitVec.eq_of_toNat_eq
  simp only [BitVec.toNat_mul, BitVec.toNat_ofNat]
  omega

theorem ev_gv {u : State σ} {g : MlS} {w : BitVec 64} (h : u.globals.lookup g = some (.val (.word w))) :
    ev u (gv g) = some (.val (.word w)) := h

theorem ev_ld {u : State σ} {a : ExpHOL 64} {w : BitVec 64} {v : ValueHOL 64}
    (ha : ev u a = some (.val (.word w))) (h : ev u (.load .one a) = some v) :
    v = .val (.word (rd u.memory w)) := by
  obtain ⟨w', hw', -, rfl⟩ := ev_load_one h
  rw [ha] at hw'
  cases hw'
  rw [Spec.Inv.mem_word u.memory w]
  rfl

theorem csumm_fs {C : Cfg} {H : Hooks σ} {f : MlS} {sg : Sig} {cs : List Cap}
    (h : CSumm σ X C H f sg cs) : FunSpec σ X f (fun vs s r t => Good (some r) → ¬ Abortive r →
      ∀ Γ, G C H Γ s → (∃ p, ptrsOf s = some p ∧ ArgsOK C Γ p sg.params vs) → ReqOK cs s Γ →
        ∃ Γ' p p', SumCore C H sg (fun a => ProtCell C Γ a ∧ CapPW cs s Γ a) Γ s vs r t Γ' p p' ∧
          True) := h

theorem good_ret (v : ValueHOL 64) : Good (some (PanSemResultExact.returned v)) := by simp [Good]
theorem nab_ret (v : ValueHOL 64) : ¬ Abortive (PanSemResultExact.returned v) := by simp [Abortive]

theorem reqOK_tab {th : Nat} {s : State σ} {Γ : Gam} : ReqOK (capsHT th) s Γ := by
  intro c hc hne
  simp only [capsHT, List.mem_cons, List.not_mem_nil, or_false] at hc
  rcases hc with rfl | rfl <;> exact absurd rfl hne

/-! ## One iteration -/

section iter
variable (Γ0 : Gam) (s0 : State σ) (p0 : Ptrs)

/-- The protected cells `state_restore` may write. -/
def PWsr (a : BitVec 64) : Prop := ProtCell guestC Γ0 a ∧ CapPW srCaps s0 Γ0 a

/-- The loop invariant. -/
def SrI (sv : BitVec 64) (u : State σ) : Prop :=
  u.locals.lookup (nm "snap") = some (.val (.word sv)) ∧
    ∃ Γ, TrkJ guestHooksJ Γ0 s0 p0 (PWsr Γ0 s0) Γ u

theorem tab_in_sr : ∀ c ∈ tabCaps, c ∈ srCaps := fun c h => List.mem_cons_of_mem _ h

variable {Γ0 s0 p0}

/-- A call to a table entry from the loop. -/
theorem sr_call {th : Nat} {sg : Sig} {u st : State σ} {Γ Γ' : Gam} {vs : List (ValueHOL 64)}
    {v : ValueHOL 64} {callee : HolFiniteMapExact MlS (ValueHOL 64)} {p p' : Ptrs}
    (hth : th ∈ hdrTys) (hord0 : p0.Ordered) (hL0 : Layout guestC p0 Γ0)
    (htrk : TrkJ guestHooksJ Γ0 s0 p0 (PWsr Γ0 s0) Γ u)
    (hc : SumCore guestC guestHooksJ sg (fun a => ProtCell guestC Γ a ∧
      CapPW (capsHT th) (callEntryStateHOLFinite u callee) Γ a) Γ (callEntryStateHOLFinite u callee)
      vs (.returned v) st Γ' p p')
    (hgw : sg.gw = [])
    (hArg : ∀ a, ArgCells sg.params vs a → WCell guestC Γ a)
    (hd : st.memaddrs = u.memaddrs) (hbe : st.be = u.be) :
    TrkJ guestHooksJ Γ0 s0 p0 (PWsr Γ0 s0) Γ' st := by
  obtain ⟨q, hq, hmq, hxq, hnfq, hG, hrest⟩ := htrk
  obtain ⟨q', hq', hordq, hLq, -⟩ := id hG
  rw [hq] at hq'
  cases hq'
  refine trkJ_call ⟨q, hq, hmq, hxq, hnfq, hG, hrest⟩ hord0 hL0 rfl rfl hc (fun g _ => by rw [hgw]; simp)
    (fun a ha => Or.inl (hArg a ha)) (fun a hpc hpw => ?_) hd hbe
  · rcases capBack hord0 hordq hmq hL0 hLq hnfq (capsHT_sub hth tab_in_sr) hpc hpw with h | h
    · exact Or.inl h
    · exact Or.inr h

end iter

/-! ## Argument helpers -/

theorem evs_eq3 {u : State σ} {a b c : ExpHOL 64} {x y z : ValueHOL 64} {vs : List (ValueHOL 64)}
    (ha : ev u a = some x) (hb : ev u b = some y) (hc : ev u c = some z)
    (h : evs u [a, b, c] = some vs) : vs = [x, y, z] := by
  obtain ⟨v1, r1, rfl, h1, hr1⟩ := evs_cons_inv h
  obtain ⟨v2, r2, rfl, h2, hr2⟩ := evs_cons_inv hr1
  obtain ⟨v3, r3, rfl, h3, hr3⟩ := evs_cons_inv hr2
  rw [ha] at h1; rw [hb] at h2; rw [hc] at h3
  cases h1; cases h2; cases h3
  rw [evs_nil] at hr3; cases hr3; rfl

theorem evs_eq2 {u : State σ} {a b : ExpHOL 64} {x y : ValueHOL 64} {vs : List (ValueHOL 64)}
    (ha : ev u a = some x) (hb : ev u b = some y) (h : evs u [a, b] = some vs) : vs = [x, y] := by
  obtain ⟨v1, r1, rfl, h1, hr1⟩ := evs_cons_inv h
  obtain ⟨v2, r2, rfl, h2, hr2⟩ := evs_cons_inv hr1
  rw [ha] at h1; rw [hb] at h2
  cases h1; cases h2
  rw [evs_nil] at hr2; cases hr2; rfl

theorem argsOK3 {Γ : Gam} {p : Ptrs} {q0 q1 q2 : PT} {v0 v1 v2 : ValueHOL 64}
    (h0 : ArgOK guestC Γ p [v0, v1, v2] q0 v0) (h1 : ArgOK guestC Γ p [v0, v1, v2] q1 v1)
    (h2 : ArgOK guestC Γ p [v0, v1, v2] q2 v2) : ArgsOK guestC Γ p [q0, q1, q2] [v0, v1, v2] := by
  refine ⟨rfl, fun i pt v hp hv => ?_⟩
  match i, hp, hv with
  | 0, hp, hv => cases hp; cases hv; exact h0
  | 1, hp, hv => cases hp; cases hv; exact h1
  | 2, hp, hv => cases hp; cases hv; exact h2
  | _ + 3, hp, _ => simp at hp

theorem argsOK2 {Γ : Gam} {p : Ptrs} {q0 q1 : PT} {v0 v1 : ValueHOL 64}
    (h0 : ArgOK guestC Γ p [v0, v1] q0 v0) (h1 : ArgOK guestC Γ p [v0, v1] q1 v1) :
    ArgsOK guestC Γ p [q0, q1] [v0, v1] := by
  refine ⟨rfl, fun i pt v hp hv => ?_⟩
  match i, hp, hv with
  | 0, hp, hv => cases hp; cases hv; exact h0
  | 1, hp, hv => cases hp; cases hv; exact h1
  | _ + 2, hp, _ => simp at hp

theorem valPT_ne_buf (th n : Nat) : valPT th ≠ .buf n := by
  unfold valPT; split <;> simp

theorem valPT_ne_bufArg (th i c d : Nat) : valPT th ≠ .bufArg i c d := by
  unfold valPT; split <;> simp

/-- The argument cells of `htab_set`: the key buffer. -/
theorem argCells_set {th : Nat} {T K V : BitVec 64} {a : BitVec 64}
    (h : ArgCells (setSig th).params [.val (.word T), .val (.word K), .val (.word V)] a) :
    Overlap K.toNat (htKL th) a := by
  obtain ⟨i, w, hw, ⟨n, hn, ho⟩ | ⟨j, c, d, x, hb, -⟩⟩ := h
  · match i, hn, hw with
    | 0, hn, _ => simp [setSig] at hn
    | 1, hn, hw => simp [setSig] at hn; subst hn; simp [argW, wordOf] at hw; subst hw; exact ho
    | 2, hn, _ => simp only [setSig, List.getElem?_cons_succ, List.getElem?_cons_zero,
        Option.some.injEq] at hn; exact absurd hn (valPT_ne_buf th n)
    | _ + 3, hn, _ => simp [setSig] at hn
  · match i, hb with
    | 0, hb => simp [setSig] at hb
    | 1, hb => simp [setSig] at hb
    | 2, hb => simp only [setSig, List.getElem?_cons_succ, List.getElem?_cons_zero,
        Option.some.injEq] at hb; exact absurd hb (valPT_ne_bufArg th j c d)
    | _ + 3, hb => simp [setSig] at hb

theorem argCells_del {th : Nat} {vs : List (ValueHOL 64)} {a : BitVec 64} :
    ¬ ArgCells (delSig th).params vs a := by
  rintro ⟨i, w, -, ⟨n, hn, -⟩ | ⟨j, c, d, x, hb, -⟩⟩
  · match i, hn with
    | 0, hn => simp [delSig] at hn
    | 1, hn => simp [delSig] at hn
    | _ + 2, hn => simp [delSig] at hn
  · match i, hb with
    | 0, hb => simp [delSig] at hb
    | 1, hb => simp [delSig] at hb
    | _ + 2, hb => simp [delSig] at hb

theorem b8_scalar : ∀ k, (guestC.ty tB8).slot k = .scalar :=
  slot_all (by decide) (by decide)

theorem jc_add1 (b : BitVec 64) (q : Nat) : jc b q + BitVec.ofNat 64 8 = jc b (q + 1) := jc_add b q 1
theorem jc_add2 (b : BitVec 64) (q : Nat) : jc b q + BitVec.ofNat 64 16 = jc b (q + 2) := jc_add b q 2
theorem jc_add3 (b : BitVec 64) (q : Nat) : jc b q + BitVec.ofNat 64 24 = jc b (q + 3) := jc_add b q 3

/-! ## The loop body -/

section loop
variable {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs}

/-- After lowering `journal_n`: the popped record's facts. -/
def SrA (Γ0 : Gam) (s0 : State σ) (p0 : Ptrs) (sv : BitVec 64) (u : State σ) : Prop :=
  u.locals.lookup (nm "snap") = some (.val (.word sv)) ∧ ∃ (Γ : Gam) (oj : Obj) (n : BitVec 64),
    TrkJ guestHooksJ Γ0 s0 p0 (PWsr Γ0 s0) Γ u ∧ oj ∈ Γ ∧ oj.ty = tJOURNAL ∧
    u.globals.lookup gJ = some (.val (.word oj.base)) ∧ u.globals.lookup gJn = some (.val (.word n)) ∧
    JEnt Γ u.memory oj.base n.toNat ∧ 32 * (n.toNat + 1) ≤ 2 ^ 64

theorem sr_assign {e0 : Obj} (he0 : e0 ∈ Γ0) (het : e0.ty = tJOURNAL) (hej : gword s0 gJ = some e0.base)
    (sv : BitVec 64) :
    Hoare σ X (fun u => SrI Γ0 s0 p0 sv u ∧ CondTrue u restoreCond)
      (.assign .global (nm "journal_n") (.op .sub [gv (nm "journal_n"), cw 1]))
      (fun r u => r = none ∧ SrA Γ0 s0 p0 sv u) := by
  refine hoare_assignK fun u _ ⟨⟨hsnap, Γ, htrk⟩, w, hw, hw0⟩ v hv _ => ?_
  obtain ⟨x, J, -, hJ, hlt⟩ := cmp_true hw hw0
  have hlt' := lower_true hlt
  have hJ' : u.globals.lookup gJn = some (.val (.word J)) := hJ
  rw [ev_sub2 hJ (ev_cw _ 1)] at hv
  cases hv
  have h1 : 1 ≤ J.toNat := by omega
  obtain ⟨-, -, -, hx0, -, hG, -, hpg, -, -⟩ := id htrk
  obtain ⟨e', he', heb, het', -⟩ := hx0 e0 he0
  have hgj : gword u gJ = some e'.base := by
    have : gword u gJ = gword s0 gJ := by unfold gword; rw [hpg gJ gJ_pg (by decide)]
    rw [this, hej, heb]
  obtain ⟨-, -, -, -, -, -, -, hW⟩ := hG
  obtain ⟨-, -, n, c, hn, -, hnc, hcs, hce, hent⟩ := (hW e' he').2 (het'.trans het) hgj
  have hnJ : n = J := by unfold gword at hn; rw [hJ'] at hn; exact (Option.some.inj hn).symm
  subst hnJ
  have e := sub1_toNat h1
  refine ⟨rfl, hsnap, Γ, e', n - BitVec.ofNat 64 1, trkJ_jn htrk hJ' h1, he', het'.trans het,
    by rw [setG_ne (by decide)]; exact AllocImpl.lookup_of_gword hgj, setG_self, ?_, ?_⟩
  · show JEnt Γ u.memory e'.base _
    rw [e]; exact hent _ (by omega)
  · rw [e]
    have : scratchEnd < 2 ^ 64 := by decide
    unfold Obj.lo at hce
    omega

/-- The branch on the record's flag and the call. -/
theorem sr_ite (hF : FoldOK σ X guestC guestHooksJ) (hord0 : p0.Ordered) (hL0 : Layout guestC p0 Γ0)
    {U3 : State σ} {Γ : Gam} {x y : Obj} {q : Ptrs} {b : BitVec 64} {i : Nat}
    (htrk3 : TrkJ guestHooksJ Γ0 s0 p0 (PWsr Γ0 s0) Γ U3)
    (hq : ptrsOf U3 = some q) (hordq : q.Ordered) (hLq : Layout guestC q Γ)
    (hr3 : U3.locals.lookup (nm "r") = some (.val (.word (jc b (4 * i)))))
    (ht3 : U3.locals.lookup (nm "t") = some (.val (.word x.base)))
    (hk3 : U3.locals.lookup (nm "key") = some (.val (.word y.base)))
    (hxΓ : x ∈ Γ) (hth : x.ty ∈ hdrTys) (hyΓ : y ∈ Γ) (hyt : y.ty = tB8) (hys : htKL x.ty ≤ y.size)
    (hv : rd U3.memory (jc b (4 * i + 2)) ≠ 0 →
      Fits Γ (valK x.ty) (rd U3.memory (jc b (4 * i + 3))))
    {Q : Option (PanSemResultExact 64) → State σ → Prop}
    (hQ : ∀ Γ' st, TrkJ guestHooksJ Γ0 s0 p0 (PWsr Γ0 s0) Γ' st → Q none { st with locals := U3.locals }) :
    Hoare σ X (fun t => t = U3)
      (.ite (.cmp .notEqual (.load .one (.op .add [lv (nm "r"), cw 16])) (cw 0))
        (callD (nm "htab_set")
          [lv (nm "t"), lv (nm "key"), .load .one (.op .add [lv (nm "r"), cw 24])])
        (callD (nm "htab_del") [lv (nm "t"), lv (nm "key")])) Q := by
  have hsc : ∀ k, (guestC.ty y.ty).slot k = .scalar := fun k => by rw [hyt]; exact b8_scalar k
  have hyhi : y.lo + htKL x.ty ≤ y.hi := by unfold Obj.hi Obj.lo; omega
  have hG3 : ∀ callee : HolFiniteMapExact MlS (ValueHOL 64),
      G guestC guestHooksJ Γ (callEntryStateHOLFinite U3 callee) := fun callee =>
    Struct.G_congr guestHooksJ_lawful rfl rfl rfl rfl (trkJ_G htrk3)
  have hq3 : ∀ callee : HolFiniteMapExact MlS (ValueHOL 64),
      ptrsOf (callEntryStateHOLFinite U3 callee) = some q := fun callee => hq
  have harg0 : ∀ vs', ArgOK guestC Γ q vs' (.fits (.ptr x.ty)) (.val (.word x.base)) :=
    fun _ => ⟨_, rfl, x, hxΓ, rfl, rfl⟩
  refine hoare_ite ?_ ?_
  · refine hoare_callD ((csumm_fs (csumm_htab_set hF guestHooksJ_mono htabHooks_guestJ hth)).and
      (Spec.Inv.funSpec_be _)) ?_
    rintro u4 hs4 ⟨rfl, w, hw, hw0⟩ vs hvs callee v st ⟨hR, hbe⟩ hst
    obtain ⟨fa, fb, hfa, hfb, hfc⟩ := cmp_true hw hw0
    have efa := ev_ld (w := jc b (4 * i + 2))
      (by rw [ev_add2 (Spec.Inv.ev_lv_w hr3) (ev_cw _ 16), jc_add2]) hfa
    rw [ev_cw] at hfb
    simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at efa hfb
    subst efa hfb
    have hflag : rd u4.memory (jc b (4 * i + 2)) ≠ 0 := by
      intro h0; rw [h0] at hfc; simp [Flapjack.Compiler.Encoders.Asm.wordCmpHOL] at hfc
    obtain ⟨z1, r1, rfl, h1, hr1⟩ := evs_cons_inv hvs
    obtain ⟨z2, r2, rfl, h2, hr2⟩ := evs_cons_inv hr1
    obtain ⟨z3, r3, rfl, h3, hr3'⟩ := evs_cons_inv hr2
    rw [evs_nil] at hr3'
    cases hr3'
    rw [Spec.Inv.ev_lv_w ht3] at h1
    cases h1
    rw [Spec.Inv.ev_lv_w hk3] at h2
    cases h2
    have e3 := ev_ld (w := jc b (4 * i + 3))
      (by rw [ev_add2 (Spec.Inv.ev_lv_w hr3) (ev_cw _ 24), jc_add3]) h3
    subst e3
    obtain ⟨Γ', p1, p1', hc, -⟩ := hR (good_ret v) (nab_ret v) Γ (hG3 callee)
      ⟨q, hq3 callee, argsOK3 (harg0 _)
        ⟨_, rfl, Struct.bufOK_obj hordq hLq hyΓ hsc (le_refl _) hyhi⟩
        (by
          unfold valPT
          split
          · trivial
          · exact ⟨_, rfl, hv hflag⟩)⟩ reqOK_tab
    refine hQ Γ' st (sr_call hth hord0 hL0 htrk3 hc rfl (fun a ha => ?_)
      (hst.2.1.trans hs4.2.1.symm) hbe)
    obtain ⟨o', ho', k', hk', hsc', ha'⟩ :=
      Struct.overlap_scell hordq hLq hyΓ hsc (le_refl _) hyhi (argCells_set ha)
    exact ⟨o', ho', k', hk', by rw [hsc']; decide, ha'⟩
  · refine hoare_callD ((csumm_fs (csumm_htab_del hF htabHooks_guestJ hth)).and
      (Spec.Inv.funSpec_be _)) ?_
    rintro u4 hs4 ⟨rfl, -⟩ vs hvs callee v st ⟨hR, hbe⟩ hst
    obtain ⟨z1, r1, rfl, h1, hr1⟩ := evs_cons_inv hvs
    obtain ⟨z2, r2, rfl, h2, hr2⟩ := evs_cons_inv hr1
    rw [evs_nil] at hr2
    cases hr2
    rw [Spec.Inv.ev_lv_w ht3] at h1
    cases h1
    rw [Spec.Inv.ev_lv_w hk3] at h2
    cases h2
    obtain ⟨Γ', p1, p1', hc, -⟩ := hR (good_ret v) (nab_ret v) Γ (hG3 callee)
      ⟨q, hq3 callee, argsOK2 (harg0 _) trivial⟩ reqOK_tab
    exact hQ Γ' st (sr_call hth hord0 hL0 htrk3 hc rfl (fun a ha => absurd ha argCells_del)
      (hst.2.1.trans hs4.2.1.symm) hbe)

/-- The record read and the call. -/
theorem sr_rest (hF : FoldOK σ X guestC guestHooksJ) (hord0 : p0.Ordered) (hL0 : Layout guestC p0 Γ0)
    (sv : BitVec 64) :
    Hoare σ X (SrA Γ0 s0 p0 sv)
      (.dec (nm "r") .one (.op .add [gv (nm "journal"), .panop .mul [gv (nm "journal_n"), cw 32]])
        (.dec (nm "t") .one (.load .one (lv (nm "r")))
          (.dec (nm "key") .one (.load .one (.op .add [lv (nm "r"), cw 8]))
            (.ite (.cmp .notEqual (.load .one (.op .add [lv (nm "r"), cw 16])) (cw 0))
              (callD (nm "htab_set")
                [lv (nm "t"), lv (nm "key"), .load .one (.op .add [lv (nm "r"), cw 24])])
              (callD (nm "htab_del") [lv (nm "t"), lv (nm "key")])))))
      (fun r t => r = none ∧ SrI Γ0 s0 p0 sv t) := by
  refine hoare_dec fun u _ ⟨hsnap, Γ, oj, n, htrk, hoj, hojt, hgj, hjn, hent, hb⟩ vr hvr _ => ?_
  have hgj' : u.globals.lookup (nm "journal") = some (.val (.word oj.base)) := hgj
  have hjn' : u.globals.lookup (nm "journal_n") = some (.val (.word n)) := hjn
  rw [ev_add2 (ev_gv hgj') (ev_mul2 (ev_gv hjn') (ev_cw _ 32)), jc_rec hb] at hvr
  cases hvr
  obtain ⟨x, hxΓ, hxb, hxk, hxs, ⟨y, hyΓ, hyb, hyt, hys⟩, hv⟩ := hent
  have hth := hkOf_tab hxk
  have hG := trkJ_G htrk
  obtain ⟨q, hq, hordq, hLq, -⟩ := id hG
  refine hoare_dec fun u1 _ hu1 vt hvt _ => ?_
  have hu1' : u1 = setVarHOLFinite (nm "r") (.val (.word (jc oj.base (4 * n.toNat)))) u := hu1
  subst hu1'
  have hr1 : (setVarHOLFinite (nm "r") (.val (.word (jc oj.base (4 * n.toNat)))) u).locals.lookup (nm "r") =
      some (.val (.word (jc oj.base (4 * n.toNat)))) := lk_set_self _ _ _
  have evt := ev_ld (Spec.Inv.ev_lv_w hr1) hvt
  subst evt
  refine hoare_dec fun u2 _ hu2 vk hvk _ => ?_
  have hu2' : u2 = setVarHOLFinite (nm "t") (.val (.word (rd u.memory (jc oj.base (4 * n.toNat)))))
      (setVarHOLFinite (nm "r") (.val (.word (jc oj.base (4 * n.toNat)))) u) := hu2
  subst hu2'
  have hr2 : (setVarHOLFinite (nm "t") (.val (.word (rd u.memory (jc oj.base (4 * n.toNat)))))
      (setVarHOLFinite (nm "r") (.val (.word (jc oj.base (4 * n.toNat)))) u)).locals.lookup (nm "r") =
      some (.val (.word (jc oj.base (4 * n.toNat)))) := by rw [lk_set_ne _ _ (by decide)]; exact hr1
  have evk := ev_ld (w := jc oj.base (4 * n.toNat + 1))
    (by rw [ev_add2 (Spec.Inv.ev_lv_w hr2) (ev_cw _ 8), jc_add1]) hvk
  subst evk
  refine sr_ite (s0 := s0) hF hord0 hL0 (q := q) (Γ := Γ) (x := x) (y := y) (b := oj.base) (i := n.toNat)
    ?_ ?_ hordq hLq ?_ ?_ ?_ hxΓ hth hyΓ hyt hys ?_ ?_
  · exact trkJ_congr guestHooksJ_lawful htrk rfl rfl rfl rfl
  · exact hq
  · simp (config := {decide := true}) only [Spec.Inv.lk_set, if_true, if_false]
  · simp (config := {decide := true}) only [Spec.Inv.lk_set, if_true, if_false]; rw [hxb]
  · simp (config := {decide := true}) only [Spec.Inv.lk_set, if_true, if_false]; rw [hyb]; rfl
  · exact hv
  intro Γ' st h
  refine ⟨rfl, ?_, Γ', trkJ_locals h _⟩
  dsimp only
  rw [Spec.Inv.lookup_restore (by decide), Spec.Inv.lookup_restore (by decide),
    Spec.Inv.lookup_restore (by decide), lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide),
    lk_set_ne _ _ (by decide)]
  exact hsnap

end loop


/-! ## The entry -/

/-- **The `state_restore` entry** (journal family). -/
theorem csumm_state_restore (hF : FoldOK σ X guestC guestHooksJ) :
    CSumm σ X guestC guestHooksJ (nm "state_restore") srSig srCaps := by
  refine sumSpecA_of_returns (noExc_state_restore hF.hX) ?_
  intro vs body callee rs hl s hs hloc r hr v hv Γ hG hargs hreq
  have hl' := hl
  rw [hF.hX] at hl'
  obtain ⟨rfl, -, A, rfl, hsA, hA⟩ := lookupCode_one code_state_restore hl'
  obtain ⟨sv, rfl⟩ := val_of_shapeEq_one hsA
  obtain ⟨p, hps, -⟩ := hargs
  obtain ⟨e0, he0, het, hej⟩ := hreq capJr List.mem_cons_self (by decide)
  obtain ⟨p', hp', hord, hL, -⟩ := id hG
  rw [hps] at hp'
  cases hp'
  have hsnap : s.locals.lookup (nm "snap") = some (.val (.word sv)) := by rw [hloc]; exact hA
  have H : Hoare σ X (fun u => u = s) restoreBody (fun r t => ∀ v, r = some (.returned v) →
      ∃ Γ', TrkJ guestHooksJ Γ s p (PWsr Γ s) Γ' t) := by
    refine hoare_seq (R := fun r t => r = none ∧ SrI Γ s p sv t) ?_
      (fun _ _ _ hr _ h => absurd h.1 hr) ?_
    · refine hoare_pre (P := SrI Γ s p sv) ?_
        (fun t _ ht => by subst ht; exact ⟨hsnap, Γ, trkJ_refl hG hps⟩)
      refine hoare_while (fun u h => h) ?_ (fun u _ hI _ => ⟨rfl, hI⟩)
      refine hoare_post (hoare_seq (sr_assign he0 het hej sv) (fun _ _ _ hr _ h => absurd h.1 hr)
        (hoare_pre (sr_rest hF hord hL sv) (fun t _ h => h.2))) ?_
      rintro r t _ _ ⟨rfl, hI⟩
      exact ⟨fun _ => hI, (fun h => by cases h), (fun h => by cases h), (fun _ h => by cases h)⟩
    · refine hoare_return fun t _ ⟨_, _, Γ', ht⟩ w _ => fun v' _ => ⟨Γ', ?_⟩
      exact trkJ_congr guestHooksJ_lawful ht rfl rfl rfl rfl
  have H' := H s hs rfl (by rw [hr, hv]; trivial)
  rw [hr, hv] at H'
  obtain ⟨Γ', ht⟩ := H' v rfl
  obtain ⟨p', hc⟩ := sumCore_of_trkJ (sg := srSig) (vs := [.val (.word sv)]) (r := r) ht hps
    List.mem_cons_self rfl rfl
  exact ⟨Γ', p, p', hc, trivial⟩

end InitECandidate.Solver.MemSafe.HtabEntries
