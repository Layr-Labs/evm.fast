import InitECandidate.Solver.MemSafe.MptH.Common

set_option autoImplicit false

/-!
# `node_write_ref`: the summary (conditional on a hand `node_hash_cached` summary)

```
fun 1 node_write_ref(1 child, 1 dst) {
  if child == 0 { st8 dst, 128; return 1; }
  if (lds 1 (child + 0)) == 0 { st8 dst, 160; memcpy(dst + 1, lds 1 (child + 24), 32); return 33; }
  if (lds 1 (child + 8)) == 0 { mpt_fail(13); }
  var rp = lds 1 (child + 8); var rl = lds 1 (child + 16);
  if rl <+ 32 { memcpy(dst, rp, rl); return rl; }
  var 1 h = node_hash_cached(child);
  st8 dst, 160; memcpy(dst + 1, h, 32); return 33; }
```

`nwrSig = ⟨[fits nodeU, buf 33], [], [], false⟩`: `child` is a node (or null), `dst` has 33
writable bytes. No further precondition.

**Assumed callee summaries**: `mpt_fail : CSumm … sgMF []` (the fold's entry) and
`node_hash_cached : CSumm … nhcSig []` with `nhcSig = ⟨[fits nodeU], [], [], false⟩`. The fold's
entry for `node_hash_cached` is `⟨[buf 32], [], [], false⟩`, which cannot be used here: it needs
`child` to be a 32-byte scalar buffer, but a node's slot 0 is its `prot` tag. So this theorem
needs a hand summary of `node_hash_cached` for `[fits nodeU]` (it writes only the scalar cache
cell `node + 24`, a `WCell`; no capability).
-/

set_option maxRecDepth 100000
set_option cbv.warning false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.MptH
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.WaveHelpers

variable {σ : Type} {X : Ctx 64}

/-! ## Rules -/

/-- `if c { …; return …; } rest`: the then-branch always ends abnormally or returns. -/
theorem hoareG_retGuardH {a : Act σ} {L L' : LocalsH → Prop} {c : ExpHOL 64} {th rest : ProgHOL 64}
    (hth : HoareG σ X (fun s => PreH a L s ∧ ∃ w, ev s c = some (.val (.word w)) ∧ w ≠ 0) th (RN a))
    (hrest : HoareG σ X (PreH a L') rest (HQa a))
    (hL' : ∀ s : State σ, L s.locals → ev s c = some (.val (.word 0)) → L' s.locals) :
    HoareG σ X (PreH a L) (.seq (.ite c th .skip) rest) (HQa a) := by
  refine hoareG_seq (R := fun r t => (r = none ∧ L' t.locals ∧ HHa a t) ∨ (r ≠ none ∧ HQa a r t))
    ?_ (fun r t _ hr _ h => h.elim (fun h => absurd h.1 hr) (fun h => h.2))
    (hoareG_pre hrest fun _ _ h => h.elim (fun h => ⟨h.2.1, h.2.2⟩) (fun h => absurd rfl h.1))
  refine hoareG_ite (hoareG_conseq hth (fun _ _ h => h) (fun r t _ _ h => Or.inr h)) ?_
  exact hoareG_skip fun s _ ⟨⟨hL, hH⟩, hc⟩ => Or.inl ⟨rfl, hL' s hL hc, hH⟩

/-- A `memcpy` into the `dst` buffer. -/
theorem hoareG_cpyDst {a : Act σ} (ha : ActOK a X)
    (hmc : CSumm σ X a.Cb a.H (nm "memcpy") Helpers.sigMemcpy []) {D : BitVec 64}
    (hbuf : BufOK a.Cb a.Γ0 a.p0 D.toNat 33) (hps : a.sg.params[1]? = some (.buf 33))
    (hw : argW a.vs 1 = some D) {L : LocalsH → Prop}
    {de se le : ExpHOL 64}
    (hev : ∀ s : State σ, InCtx s X → L s.locals → ∃ (Dd Ln : BitVec 64),
      ev s de = some (.val (.word Dd)) ∧ ev s le = some (.val (.word Ln)) ∧
        D.toNat ≤ Dd.toNat ∧ Dd.toNat + Ln.toNat ≤ D.toNat + 33) :
    HoareG σ X (PreH a L) (callD (nm "memcpy") [de, se, le]) (SPA a L) := by
  refine hoareG_callSP ha hmc (by simp [Helpers.sigMemcpy]) (by simp [Helpers.sigMemcpy]) ?_
  intro s hs hL Γ p he hh vs hvs
  obtain ⟨Dd, Ln, h1, h3, r1, r2⟩ := hev s hs hL
  obtain ⟨v1, vs1, rfl, e1, q1⟩ := evs_cons_inv hvs
  obtain ⟨v2, vs2, rfl, e2, q2⟩ := evs_cons_inv q1
  obtain ⟨v3, vs3, rfl, e3, q3⟩ := evs_cons_inv q2
  have hv1 : v1 = .val (.word Dd) := Option.some.inj (e1.symm.trans h1)
  have hv3 : v3 = .val (.word Ln) := Option.some.inj (e3.symm.trans h3)
  have hvs3 : vs3 = [] := Option.some.inj (q3.symm.trans evs_nil)
  subst hv1 hv3 hvs3
  refine ⟨⟨rfl, fun i pt w hpt hw => ?_⟩, fun x hx => ?_⟩
  · rcases i with _ | _ | _ | i <;> simp [Helpers.sigMemcpy] at hpt hw <;> subst hpt <;> subst hw
    · exact ⟨Dd, Ln, rfl, rfl, Helpers.bufOK_sub (bufOK_later ha hh he hbuf) r1 (by omega)⟩
    · trivial
    · trivial
  · have hov : Overlap Dd.toNat (1 * Ln.toNat + 0) x := by
      obtain ⟨i, w, hw', h⟩ := hx
      rcases h with ⟨m, hn, -⟩ | ⟨j, c, d, z, hj, hz, ho⟩
      · rcases i with _ | _ | _ | i <;> simp [Helpers.sigMemcpy] at hn
      · rcases i with _ | _ | _ | i <;> simp [Helpers.sigMemcpy] at hj
        obtain ⟨rfl, rfl, rfl⟩ := hj
        simp [argW, wordOf] at hw' hz
        subst hw'; subst hz
        exact ho
    exact Or.inr (Or.inl (argCells_buf_at hps hw (overlap_mono' hov r1 (by omega))))

/-! ## Code -/

def cCh : MlS := nm "child"
def cDs : MlS := nm "dst"
def cRp : MlS := nm "rp"
def cRl : MlS := nm "rl"
def cH : MlS := nm "h"

def nwrLd (k : Nat) : ExpHOL 64 := .load .one (.op .add [lv cCh, cw k])

def nwrSt (c : Nat) : ProgHOL 64 := .storeByte (lv cDs) (cw c)

def nwrCpy1 (src : ExpHOL 64) : ProgHOL 64 :=
  callD (nm "memcpy") [.op .add [lv cDs, cw 1], src, cw 32]

def nwrBody : ProgHOL 64 :=
  .seq (.ite (.cmp .equal (lv cCh) (cw 0)) (.seq (nwrSt 128) (.return (cw 1))) .skip)
    (.seq (.ite (.cmp .equal (nwrLd 0) (cw 0))
        (.seq (nwrSt 160) (.seq (nwrCpy1 (nwrLd 24)) (.return (cw 33)))) .skip)
      (.seq (.ite (.cmp .equal (nwrLd 8) (cw 0)) (callD (nm "mpt_fail") [cw 13]) .skip)
        (.dec cRp .one (nwrLd 8)
          (.dec cRl .one (nwrLd 16)
            (.seq (.ite (.cmp .lower (lv cRl) (cw 32))
                (.seq (callD (nm "memcpy") [lv cDs, lv cRp, lv cRl]) (.return (lv cRl))) .skip)
              (.decCall cH .one (nm "node_hash_cached") [lv cCh]
                (.seq (nwrSt 160) (.seq (nwrCpy1 (lv cH)) (.return (cw 33))))))))))

def nwrPs : List (MlS × ShapeHOL) := [(cCh, .one), (cDs, .one)]

theorem entry_node_write_ref : fnEntry Guest.Software.guestFn_node_write_ref =
    (nm "node_write_ref", nwrPs, nwrBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_node_write_ref : guestCode (nm "node_write_ref") = some (nwrPs, nwrBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 289) (by decide)) ⟨_, rfl⟩
    entry_node_write_ref

def nwrSig : Sig := ⟨[.fits Types.nodeU, .buf 33], [], [], false⟩

/-- The assumed `node_hash_cached` signature (a hand entry: the fold's is `[buf 32]`). -/
def nhcSig : Sig := ⟨[.fits Types.nodeU], [], [], false⟩

def NW (C D : BitVec 64) (m : LocalsH) : Prop :=
  m.lookup cCh = some (.val (.word C)) ∧ m.lookup cDs = some (.val (.word D))

def NW2 (C D RP : BitVec 64) (m : LocalsH) : Prop :=
  NW C D m ∧ m.lookup cRp = some (.val (.word RP))

def NW3 (C D RP RL : BitVec 64) (m : LocalsH) : Prop :=
  NW2 C D RP m ∧ m.lookup cRl = some (.val (.word RL))

def NW4 (C D RP RL H' : BitVec 64) (m : LocalsH) : Prop :=
  NW3 C D RP RL m ∧ m.lookup cH = some (.val (.word H'))

theorem sumSpec_node_write_ref {H : Hooks σ} (hF : FoldOK σ X Types.guestC H)
    (hMF : CSumm σ X Types.guestC H (nm "mpt_fail") Integ.sgMF [])
    (hNH : CSumm σ X Types.guestC H (nm "node_hash_cached") nhcSig []) :
    SumSpecA σ X Types.guestC H (nm "node_write_ref") nwrSig (fun _ _ _ => True)
      (fun _ _ _ _ => False) (fun _ _ _ _ _ _ => True) := by
  have hX := hF.hX
  have hmc : CSumm σ X Types.guestC H (nm "memcpy") Helpers.sigMemcpy [] :=
    csumm_of_summ (Helpers.summ_memcpy hF.hH Helpers.tagSlots_guestC hX hF.hal)
  refine Bn2.sumSpecA_of_heap hF.hH hF.hC hF.hal hF.hAC hF.hNS ?_
  intro vs body callee rs hl s0 _ hloc Γ0 p0 hpre ha hh
  rw [hX] at hl
  obtain ⟨rfl, -, Cv, Dv, rfl, hsC, hsD, hlc, hld⟩ :=
    lookupCode_two code_node_write_ref (by decide) hl
  obtain ⟨C, rfl⟩ := val_of_shapeEq_one hsC
  obtain ⟨D, rfl⟩ := val_of_shapeEq_one hsD
  set a := actOf Types.guestC H nwrSig [] [.val (.word C), .val (.word D)] s0 Γ0 p0 with hadef
  have hbuf : BufOK a.Cb a.Γ0 a.p0 D.toNat 33 :=
    bufOK_of_buf (ps := nwrSig.params) ha.hargs0 (i := 1) (n := 33) rfl rfl
  have hfit0 : Fits a.Γ0 Types.nodeU C := by
    obtain ⟨w, hw, hf⟩ := ha.hargs0.2 0 (.fits Types.nodeU) (.val (.word C)) rfl rfl
    simp only [wordOf, Option.some.injEq] at hw
    subst hw
    exact hf
  have hDb : D.toNat + 33 < 2 ^ 64 := by
    obtain ⟨p1, hp1, hord, hL, -⟩ := hh.1
    rw [hh.2.1] at hp1
    cases hp1
    have hse : scratchEnd < 2 ^ 63 := by decide
    rcases Helpers.bufOK_bound hord hL D.isLt hbuf with h | h <;> omega
  have hps : a.sg.params[1]? = some (.buf 33) := rfl
  have hwD : argW a.vs 1 = some D := rfl
  -- a byte store into `dst`
  have hstb : ∀ (L : LocalsH → Prop), (∀ m, L m → m.lookup cDs = some (.val (.word D))) →
      ∀ c : Nat, HoareG σ X (PreH a L) (nwrSt c) (SPA a L) := by
    intro L hLD c
    refine hoareG_stbBufSP ha (L := L) (ea := lv cDs) (ev' := cw c) ?_
    intro s hs hL Γ p he hh' w hw
    have := ev_lw (hLD _ hL)
    rw [this] at hw
    cases hw
    have hov := Helpers.overlap_byte (b := D.toNat) (n := 33) (w := D) (le_refl _) (by omega)
    refine ⟨?_, Or.inr (Or.inl (argCells_buf_at hps hwD hov))⟩
    rcases bufOK_later ha hh' he hbuf _ hov with hs | ⟨hn, -⟩
    · exact Or.inl hs
    · exact Or.inr hn
  have hretRN : ∀ (L : LocalsH → Prop) (e : ExpHOL 64),
      HoareG σ X (PreH a L) (.return e) (RN a) := fun L e =>
    hoareG_return fun t _ ⟨_, hh'⟩ v _ => ⟨by simp, hqa_of_hha (t := emptyLocalsHOLFinite t)
      (hha_congr (s := t) ha.hH rfl rfl rfl rfl hh') _⟩
  have hD1 : (D + BitVec.ofNat 64 1).toNat = D.toNat + 1 := by
    rw [BitVec.toNat_add, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (a := 1) (by omega),
      Nat.mod_eq_of_lt (by omega)]
  have h32 : (BitVec.ofNat 64 32).toNat = 32 := rfl
  refine hoareG_conseq (P := PreH a (NW C D)) (Q := HQa a) ?_ ?_ ?_
  rotate_left
  · intro t _ ht
    subst ht
    exact ⟨⟨by rw [hloc]; exact hlc, by rw [hloc]; exact hld⟩, Γ0, p0, ext_refl _, hh⟩
  · intro r t _ _ h r' hr hna
    obtain ⟨Γ', p', he, hh'⟩ := h r' hr hna
    exact ⟨Γ', p', he, hh', fun v _ i rt w hrt => by simp [nwrSig] at hrt⟩
  unfold nwrBody
  -- `memcpy(dst + 1, src, 32)`
  have hcpy1 : ∀ (L : LocalsH → Prop), (∀ m, L m → m.lookup cDs = some (.val (.word D))) →
      ∀ src : ExpHOL 64, HoareG σ X (PreH a L) (nwrCpy1 src) (SPA a L) := by
    intro L hLD src
    refine hoareG_cpyDst ha hmc hbuf hps hwD (L := L) (de := .op .add [lv cDs, cw 1])
      (se := src) (le := cw 32) ?_
    intro s hs hL
    exact ⟨D + BitVec.ofNat 64 1, BitVec.ofNat 64 32, ev_add2 (ev_lw (hLD _ hL)) (ev_cw _ 1),
      ev_cw _ 32, by omega, by omega⟩
  -- 1. `if child == 0 { st8 dst, 128; return 1; }`
  refine hoareG_retGuardH (L := NW C D) (L' := NW C D) ?_ ?_ (fun s hL _ => hL)
  · exact hoareG_pre (hoareG_seqSP (L := NW C D) rn_of_abn (hstb _ (fun m h => h.2) 128)
      (hretRN _ _)) (fun _ _ h => h.1)
  -- 2. `if (lds 1 (child + 0)) == 0 { st8 dst, 160; memcpy(dst + 1, lds 1 (child + 24), 32); return 33; }`
  refine hoareG_retGuardH (L := NW C D) (L' := NW C D) ?_ ?_ (fun s hL _ => hL)
  · exact hoareG_pre (hoareG_seqSP (L := NW C D) rn_of_abn (hstb _ (fun m h => h.2) 160)
      (hoareG_seqSP (L := NW C D) rn_of_abn (hcpy1 _ (fun m h => h.2) _) (hretRN _ _)))
      (fun _ _ h => h.1)
  -- 3. `if (lds 1 (child + 8)) == 0 { mpt_fail(13); }`
  refine hoareG_seqSP (L := NW C D) hqa_of_abn (Integ.hoareG_guardSP ha hMF) ?_
  -- 4. `var rp = …; var rl = …;`
  refine hoareG_dec fun s hs ⟨hL, hH'⟩ v hv hsh => ?_
  obtain ⟨RP, rfl⟩ := val_of_shapeEq_one hsh
  refine hoareG_conseq (P := PreH a (NW2 C D RP)) (Q := HQa a) ?_ (fun t _ ht => ?_)
    (fun r t _ _ h => hqa_locals ha.hH _ h)
  swap
  · subst ht
    exact ⟨⟨⟨by rw [lk_set_ne _ _ (by decide)]; exact hL.1,
      by rw [lk_set_ne _ _ (by decide)]; exact hL.2⟩, lk_set_self _ _ _⟩,
      hha_congr (s := s) ha.hH rfl rfl rfl rfl hH'⟩
  refine hoareG_dec fun s hs ⟨hL, hH'⟩ v hv hsh => ?_
  obtain ⟨RL, rfl⟩ := val_of_shapeEq_one hsh
  refine hoareG_conseq (P := PreH a (NW3 C D RP RL)) (Q := HQa a) ?_ (fun t _ ht => ?_)
    (fun r t _ _ h => hqa_locals ha.hH _ h)
  swap
  · subst ht
    exact ⟨⟨⟨⟨by rw [lk_set_ne _ _ (by decide)]; exact hL.1.1,
      by rw [lk_set_ne _ _ (by decide)]; exact hL.1.2⟩,
      by rw [lk_set_ne _ _ (by decide)]; exact hL.2⟩, lk_set_self _ _ _⟩,
      hha_congr (s := s) ha.hH rfl rfl rfl rfl hH'⟩
  -- 5. `if rl <+ 32 { memcpy(dst, rp, rl); return rl; }`
  refine hoareG_retGuardH (L := NW3 C D RP RL) (L' := NW3 C D RP RL) ?_ ?_ (fun s hL _ => hL)
  · have key : RL.toNat < 32 →
        HoareG σ X (PreH a (NW3 C D RP RL)) (.seq (callD (nm "memcpy") [lv cDs, lv cRp, lv cRl])
          (.return (lv cRl))) (RN a) := by
      intro hRL
      refine hoareG_seqSP (L := NW3 C D RP RL) rn_of_abn ?_ (hretRN _ _)
      refine hoareG_cpyDst ha hmc hbuf hps hwD (L := NW3 C D RP RL) (de := lv cDs) (se := lv cRp)
        (le := lv cRl) ?_
      intro s' hs' hL
      exact ⟨D, RL, ev_lw hL.1.1.2, ev_lw hL.2, le_rfl, by omega⟩
    intro s hs ⟨hP, w, hc, hw⟩ hg
    have hlt := lower_true (cmp_val_true hc hw (ev_lw hP.1.2) (ev_cw _ 32))
    rw [h32] at hlt
    exact key hlt s hs hP hg
  -- 6. `var h = node_hash_cached(child); st8 dst, 160; memcpy(dst + 1, h, 32); return 33;`
  have hf' : FunSpec σ X (nm "node_hash_cached") (fun _ _ _ _ => True) := funSpec_true _
  refine hoareG_decCallH2 ha hNH hf' (by simp [nhcSig]) (by simp [nhcSig])
    (L := NW3 C D RP RL) (L' := fun m => ∃ H' : BitVec 64, NW4 C D RP RL H' m) ?_ ?_ ?_
  · intro s hs hL Γ p he hh' vs hvs
    obtain ⟨v1, vs1, rfl, e1, q1⟩ := evs_cons_inv hvs
    have hv1 : v1 = .val (.word C) := Option.some.inj (e1.symm.trans (ev_lw hL.1.1.1))
    have hvs1 : vs1 = [] := Option.some.inj (q1.symm.trans evs_nil)
    subst hv1 hvs1
    refine ⟨⟨rfl, fun i pt w hpt hw => ?_⟩, fun x hx => ?_⟩
    · rcases i with _ | i
      · simp [nhcSig] at hpt hw
        subst hpt; subst hw
        exact ⟨C, rfl, fits_ext he hfit0⟩
      · simp [nhcSig] at hpt
    · exfalso
      obtain ⟨i, w, -, h⟩ := hx
      rcases h with ⟨n, hn, -⟩ | ⟨j, c, d, y, hn, -, -⟩ <;> rcases i with _ | i <;>
        simp [nhcSig] at hn
  · intro s hL vs hvs callee v st _ hsh
    obtain ⟨Hw, rfl⟩ := val_of_shapeEq_one' hsh
    refine ⟨Hw, ⟨⟨⟨?_, ?_⟩, ?_⟩, ?_⟩, lk_set_self _ _ _⟩
    · rw [lk_set_ne _ _ (by decide)]; exact hL.1.1.1
    · rw [lk_set_ne _ _ (by decide)]; exact hL.1.1.2
    · rw [lk_set_ne _ _ (by decide)]; exact hL.1.2
    · rw [lk_set_ne _ _ (by decide)]; exact hL.2
  · refine hoareG_exH fun H' => ?_
    refine hoareG_seqSP (L := NW4 C D RP RL H') hqa_of_abn
      (hstb _ (fun m h => h.1.1.1.2) 160) (hoareG_seqSP (L := NW4 C D RP RL H') hqa_of_abn
        (hcpy1 _ (fun m h => h.1.1.1.2) _)
        (hoareG_conseq (hretRN _ _) (fun _ _ h => h) (fun r t _ _ h => h.2)))

theorem sumSpec_node_write_ref_guestJL {σ : Type}
    (hMF : CSumm σ guestCtx Types.guestC (Hooks.guestHooksJL (σ := σ)) (nm "mpt_fail")
      Integ.sgMF [])
    (hNH : CSumm σ guestCtx Types.guestC (Hooks.guestHooksJL (σ := σ)) (nm "node_hash_cached")
      nhcSig []) :
    SumSpecA σ guestCtx Types.guestC (Hooks.guestHooksJL (σ := σ)) (nm "node_write_ref") nwrSig
      (fun _ _ _ => True) (fun _ _ _ _ => False) (fun _ _ _ _ _ _ => True) :=
  sumSpec_node_write_ref Wire.foldOK_guestJL hMF hNH

end InitECandidate.Solver.MemSafe.MptH

#print axioms InitECandidate.Solver.MemSafe.MptH.sumSpec_node_write_ref
#print axioms InitECandidate.Solver.MemSafe.MptH.sumSpec_node_write_ref_guestJL
