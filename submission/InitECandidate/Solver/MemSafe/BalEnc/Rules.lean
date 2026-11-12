import InitECandidate.Solver.MemSafe.BalEnc.Hs

set_option autoImplicit false

/-!
# Rules over fact lists: `dec`, `decCall`, the wrap stretch and writer steps
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.BalEnc
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Helpers InitECandidate.Solver.MemSafe.Hooks
open InitECandidate.Solver.MemSafe.Aw

variable {σ : Type} {X : Ctx 64}

/-- `var x = e; body` with a one-word `e`. -/
theorem hoareG_decH {a : AwE σ} (hK : AwOK a) {x : MlS} {e : ExpHOL 64} {body : ProgHOL 64}
    {fs fx fo fb : List Fct} {Ret : ValueHOL 64 → Prop}
    (hxf : ∀ f ∈ fs, x ∉ f.vars) (hxo : ∀ f ∈ fo, x ∉ f.vars)
    (hnew : ∀ s : State σ, InCtx s X → Hs fs s.locals → ∀ v, ev s e = some v →
      shapeEqHOL .one (shapeOfHOLExact v) = true → Hs fx (s.locals.update (x, v)))
    (hbody : HoareG σ X (APre a (Hs (fx ++ fs))) body (AQ a (Hs fb) Ret))
    (hsub : ∀ f ∈ fo, f ∈ fb) :
    HoareG σ X (APre a (Hs fs)) (.dec x .one e body) (AQ a (Hs fo) Ret) := by
  refine hoareG_decA hK (L' := fun _ => Hs fb) ?_ (fun m m' _ hL' => hs_res hxo (hs_mono hL' hsub))
  intro s hs hL v hv hsh
  refine hoareG_preA hbody (fun m hm => ?_)
  subst hm
  exact hs_append (hnew s hs hL v hv hsh) (hs_upd hxf hL)

/-- `var rn = f(args); k` through an `ASp`. -/
theorem hoareG_decCallH {a : AwE σ} (hK : AwOK a) {f rn : MlS} {sh : ShapeHOL}
    {args : List (ExpHOL 64)} {k : ProgHOL 64}
    {Pre : List (ValueHOL 64) → State σ → Prop}
    {Ret : List (ValueHOL 64) → ValueHOL 64 → State σ → Prop} (hf : ASp a X f Pre Ret)
    {fs fx fo fb : List Fct} {Ret' : ValueHOL 64 → Prop}
    (hxf : ∀ g ∈ fs, rn ∉ g.vars) (hxo : ∀ g ∈ fo, rn ∉ g.vars)
    (hpre : ∀ s : State σ, InCtx s X → APre a (Hs fs) s → ∀ vs, evs s args = some vs →
      ∀ callee, Pre vs (callEntryStateHOLFinite s callee))
    (hnew : ∀ (s : State σ) vs v (st : State σ), Hs fs s.locals → evs s args = some vs →
      Ret vs v st → shapeEqHOL (shapeOfHOLExact v) sh = true → Hs fx (s.locals.update (rn, v)))
    (hbody : HoareG σ X (APre a (Hs (fx ++ fs))) k (AQ a (Hs fb) Ret'))
    (hsub : ∀ g ∈ fo, g ∈ fb) :
    HoareG σ X (APre a (Hs fs)) (.decCall rn sh f args k) (AQ a (Hs fo) Ret') := by
  refine hoareG_decCallAs' hK hf (Lk := Hs (fx ++ fs)) (L' := fun _ => Hs fb) hpre ?_
    (fun _ => hbody) (fun m m' _ hL' => hs_res hxo (hs_mono hL' hsub))
  intro s vs v st hL hvs hRet hsh
  exact hs_append (hnew s vs v st hL hvs hRet hsh) (hs_upd hxf hL)

/-- `f(args);` keeping the facts. -/
theorem hoareG_callH {a : AwE σ} (hK : AwOK a) {f : MlS} {args : List (ExpHOL 64)}
    {Pre : List (ValueHOL 64) → State σ → Prop}
    {Ret : List (ValueHOL 64) → ValueHOL 64 → State σ → Prop} (hf : ASp a X f Pre Ret)
    {fs : List Fct} {Ret' : ValueHOL 64 → Prop}
    (hpre : ∀ s : State σ, InCtx s X → APre a (Hs fs) s → ∀ vs, evs s args = some vs →
      ∀ callee, Pre vs (callEntryStateHOLFinite s callee)) :
    HoareG σ X (APre a (Hs fs)) (.call (some (none, none)) f args) (AQ a (Hs fs) Ret') :=
  hoareG_callAs hK hf hpre (fun _ _ _ _ hL _ _ => hL)

/-- Evaluation of the wrap's length argument. -/
theorem ev_subE {s : State σ} {b c : MlS} {B C : BitVec 64}
    (hb : s.locals.lookup b = some (.val (.word B))) (hc : s.locals.lookup c = some (.val (.word C))) :
    ev s (subE c b) = some (.val (.word (C - (B + BitVec.ofNat 64 9)))) :=
  ev_sub2 (ev_lw hc) (ev_add2 (ev_lw hb) (ev_cw _ 9))

/-- **The wrap stretch.** `b ≥ h0`, `b + 9 ≤ c ≤ B0`; afterwards `b` is moved up to a value in
`[b + 1, c]`. -/
theorem hoareG_wrap {a : AwE σ} (hK : AwOK a) (hC : X.code.lookup = guestCode)
    (hA : AlignedDom X) (hT : DomBelow X) {hl b c : MlS} {k : ProgHOL 64}
    {fs fk fo fb : List Fct} {Ret : ValueHOL 64 → Prop} {UB : Nat} (hUB : UB ≤ 2 ^ 59)
    (hhb : hl ≠ b) (hhc : hl ≠ c)
    (hxf : ∀ f ∈ fs, hl ∉ f.vars) (hxo : ∀ f ∈ fo, hl ∉ f.vars)
    (hbc : ∀ m, Hs fs m → ∃ B C : BitVec 64, m.lookup b = some (.val (.word B)) ∧
      m.lookup c = some (.val (.word C)) ∧ a.h0 ≤ B.toNat ∧ B.toNat + 9 ≤ C.toNat ∧
      C.toNat ≤ UB)
    (hnew : ∀ (m : Locals) (B C B' : BitVec 64), Hs fs m → m.lookup b = some (.val (.word B)) →
      m.lookup c = some (.val (.word C)) → B.toNat + 1 ≤ B'.toNat → B'.toNat ≤ C.toNat →
      B'.toNat ≤ B0 → Hs fk (m.update (b, .val (.word B'))))
    (hk : HoareG σ X (APre a (Hs fk)) k (AQ a (Hs fb) Ret)) (hsub : ∀ f ∈ fo, f ∈ fb) :
    HoareG σ X (APre a (Hs fs)) (wrapS hl b c k) (AQ a (Hs fo) Ret) := by
  have hn := num_facts2
  have hLk : ∀ (m : Locals) (v : ValueHOL 64), Hs fs m → Hs fs (m.update (hl, v)) :=
    fun m v h => hs_upd hxf h
  unfold wrapS
  refine hoareG_decCallAs' hK (asp_of_footRet hK (footRet_list_header_len hC) (fun vs x hx => hx.elim))
    (Lk := Hs (Fct.bd hl 1 9 :: fs)) (L' := fun _ => Hs fb) (fun _ _ _ _ _ _ => trivial) ?_ ?_
    (fun m m' _ hL' => hs_res hxo (hs_mono hL' hsub))
  · intro s vs v st hL hvs hRet hsh
    obtain ⟨B, C, hB, hCc, -, -, hCb⟩ := hbc _ hL
    obtain ⟨v0, vs', rfl, hv0, -⟩ := evs_cons_inv hvs
    rw [ev_subE (s := ({ s with locals := s.locals } : State σ)) hB hCc] at hv0
    cases hv0
    have hv := hRet _ rfl
    subst hv
    have hH := hdrLen_le (n := (C - (B + BitVec.ofNat 64 9)).toNat) (BitVec.isLt _)
    have hHH : (BitVec.ofNat 64 (hdrLen (C - (B + BitVec.ofNat 64 9)).toNat)).toNat =
        hdrLen (C - (B + BitVec.ofNat 64 9)).toNat := by
      rw [BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega)]
    refine hs_cons ?_ (hLk _ _ hL)
    exact bd_new _ _ _ (by omega) (by omega)
  · intro s1
    have hB0v : B0 = 2 ^ 40 + 128 := by unfold B0 domTop; rfl
    let R3 : BitVec 64 → BitVec 64 → BitVec 64 → Prop := fun HL B C =>
      C.toNat - (B.toNat + 9) = 0 ∨ B.toNat + HL.toNat + (C.toNat - (B.toNat + 9)) ≤ domTop + 64
    have hfs' : ∀ m, Hs (Fct.bd hl 1 9 :: fs) m → Hs fs m :=
      fun m h => hs_mono h (fun f hf => List.mem_cons_of_mem _ hf)
    have hhl : ∀ m, Hs (Fct.bd hl 1 9 :: fs) m → Bd m hl 1 9 :=
      fun m h => h _ (List.mem_cons_self ..)
    refine hoareG_seqA (L2 := Hs (Fct.rel3 hl b c R3 :: Fct.bd hl 1 9 :: fs))
      (hoareG_callAs hK (asp_memcpy hK hC hA hT) ?_ ?_) ?_
    · intro s2 hs2 hP2 vs hvs callee
      obtain ⟨B, C, hB, hCc, h1, h2, h3⟩ := hbc _ (hfs' _ hP2.2)
      obtain ⟨HL, hHL, g1, g2⟩ := hhl _ hP2.2
      obtain ⟨v1, v2, v3, rfl, e1, e2, e3⟩ := evs_three hvs
      rw [ev_add2 (ev_lw hB) (ev_lw hHL)] at e1
      rw [ev_add2 (ev_lw hB) (ev_cw _ 9)] at e2
      rw [ev_subE hB hCc] at e3
      cases e1
      cases e2
      cases e3
      exact ⟨B + HL, C - (B + BitVec.ofNat 64 9), rfl, rfl, by bv_omega, by bv_omega⟩
    · intro s2 vs v st hL hvs hRet
      obtain ⟨B, C, hB, hCc, h1, h2, h3⟩ := hbc _ (hfs' _ hL)
      obtain ⟨HL, hHL, g1, g2⟩ := hhl _ hL
      obtain ⟨v1, v2, v3, rfl, e1, e2, e3⟩ := evs_three hvs
      rw [ev_add2 (ev_lw hB) (ev_lw hHL)] at e1
      rw [ev_add2 (ev_lw hB) (ev_cw _ 9)] at e2
      rw [ev_subE hB hCc] at e3
      cases e1
      cases e2
      cases e3
      have hr := hRet (B + HL) (C - (B + BitVec.ofNat 64 9)) rfl rfl
      refine hs_cons ⟨HL, B, C, hHL, hB, hCc, ?_⟩ hL
      show C.toNat - (B.toNat + 9) = 0 ∨ B.toNat + HL.toNat + (C.toNat - (B.toNat + 9)) ≤ domTop + 64
      rcases hr with hr | hr
      · left; bv_omega
      · right; bv_omega
    refine hoareG_seqA (L2 := Hs (Fct.bd b 0 (domTop + 7) :: Fct.rel3 hl b c R3 :: Fct.bd hl 1 9 :: fs))
      (hoareG_callAs hK (asp_writer hK (footRet_encode_list_headerA hC hA hT)) ?_ ?_) ?_
    · intro s2 hs2 hP2 vs hvs callee
      obtain ⟨B, C, hB, hCc, h1, h2, h3⟩ := hbc _ (hfs' _ (hs_mono hP2.2
        (fun f hf => List.mem_cons_of_mem _ hf)))
      obtain ⟨v1, vs', rfl, e1, -⟩ := evs_cons_inv hvs
      rw [ev_lw hB] at e1
      cases e1
      exact ⟨B, rfl, h1, by bv_omega⟩
    · intro s2 vs v st hL hvs hRet
      obtain ⟨B, C, hB, hCc, h1, h2, h3⟩ := hbc _ (hfs' _ (hs_mono hL
        (fun f hf => List.mem_cons_of_mem _ hf)))
      obtain ⟨v1, v2, rfl, e1, e2⟩ := evs_two hvs
      rw [ev_lw hB] at e1
      rw [ev_subE hB hCc] at e2
      cases e1
      cases e2
      have hr := (hRet B (C - (B + BitVec.ofNat 64 9)) rfl rfl).1
      unfold InD at hr
      exact hs_cons ⟨B, hB, Nat.zero_le _, by omega⟩ hL
    refine hoareG_seqA (L2 := Hs fk) (hoareG_assignA hK fun s hs hL v hv => ?_) hk
    have hL' : Hs (Fct.bd hl 1 9 :: fs) s.locals :=
      hs_mono hL (fun f hf => List.mem_cons_of_mem _ (List.mem_cons_of_mem _ hf))
    obtain ⟨B, C, hB, hCc, h1, h2, h3⟩ := hbc _ (hfs' _ hL')
    obtain ⟨HL, hHL, g1, g2⟩ := hhl _ hL'
    have hr3 := hL (Fct.rel3 hl b c R3) (by simp)
    have hbb := hL (Fct.bd b 0 (domTop + 7)) (by simp)
    obtain ⟨X0, Y0, Z0, hX0, hY0, hZ0, hR⟩ := hr3
    obtain ⟨B1, hB1, -, hB1'⟩ := hbb
    rw [hHL] at hX0
    rw [hB] at hY0
    rw [hCc] at hZ0
    rw [hB] at hB1
    cases hX0
    cases hY0
    cases hZ0
    cases hB1
    rw [ev_add3 (ev_lw hB) (ev_lw hHL) (ev_subE hB hCc)] at hv
    cases hv
    refine hnew s.locals B C _ (hfs' _ hL') hB hCc (by bv_omega) (by bv_omega) ?_
    have hdt : domTop = 2 ^ 40 := rfl
    show (B + (HL + (C - (B + BitVec.ofNat 64 9)))).toNat ≤ B0
    rcases hR with hR | hR
    · bv_omega
    · bv_omega


/-- `x = x + w` after a writer: `x` moves up to `W` with `T < W ≤ B0`. -/
theorem hoareG_addWH {a : AwE σ} (hK : AwOK a) {x : MlS} {lo : Nat}
    {L L' : Locals → Prop} {Ret : ValueHOL 64 → Prop}
    (hL' : ∀ (m : Locals) (T W : BitVec 64), L m → m.lookup x = some (.val (.word T)) →
      T.toNat < W.toNat → W.toNat ≤ B0 → L' (m.update (x, .val (.word W)))) :
    HoareG σ X (APre a (fun m => L m ∧ TWn lo x m)) (.assign .local x (.op .add [lv x, lv wN]))
      (AQ a L' Ret) := by
  refine hoareG_assignA hK fun s _ ⟨hL, T, k, hT, hw, h1, hk1, h2, hI⟩ v hv => ?_
  rw [ev_add2 (ev_lw hT) (ev_lw hw)] at hv
  cases hv
  have hs0 : B0 < 2 ^ 62 := by unfold B0 domTop; decide
  have hadd : (T + BitVec.ofNat 64 k).toNat = T.toNat + k := toNat_addc (by omega)
  exact hL' _ T _ hL hT (by omega) (by omega)

/-- **A writer step**: `w = f(x, args); x = x + w; k`; afterwards the facts are `fs'`. -/
theorem hoareG_stepH {a : AwE σ} (hK : AwOK a) {f x : MlS} {args : List (ExpHOL 64)}
    {k : ProgHOL 64} {fs fs' fo : List Fct} {Ret : ValueHOL 64 → Prop}
    (hw : WriterOK a X f) (hwx : bW ≠ x) (hxw : ∀ g ∈ fs, bW ∉ g.vars)
    (hx : ∀ m, Hs fs m → Bd m x a.h0 (2 ^ 60))
    (hup : ∀ (m : Locals) (T W : BitVec 64), Hs fs m → m.lookup x = some (.val (.word T)) →
      T.toNat < W.toNat → W.toNat ≤ B0 → Hs fs' (m.update (x, .val (.word W))))
    (hk : HoareG σ X (APre a (Hs fs')) k (AQ a (Hs fo) Ret)) :
    HoareG σ X (APre a (Hs fs)) (stepW f x args k) (AQ a (Hs fo) Ret) := by
  obtain ⟨RetF, hf, hRetK⟩ := hw
  unfold stepW
  refine hoareG_seqA (L2 := fun m => Hs fs m ∧ TWn a.h0 x m)
    (hoareG_callPtrA hK hf hRetK (lo := a.h0) (hi := 2 ^ 60) le_rfl le_rfl (L := Hs fs) hx
      (fun m v h => hs_upd hxw h) hwx) ?_
  exact hoareG_seqA (L2 := Hs fs') (hoareG_addWH hK (x := x) (lo := a.h0) hup) hk

/-- `var x = e; body`, with the invariant of the state available to the new facts. -/
theorem hoareG_decHI {a : AwE σ} (hK : AwOK a) {x : MlS} {e : ExpHOL 64} {body : ProgHOL 64}
    {fs fx fo fb : List Fct} {Ret : ValueHOL 64 → Prop}
    (hxf : ∀ f ∈ fs, x ∉ f.vars) (hxo : ∀ f ∈ fo, x ∉ f.vars)
    (hnew : ∀ s : State σ, InCtx s X → APre a (Hs fs) s → ∀ v, ev s e = some v →
      shapeEqHOL .one (shapeOfHOLExact v) = true → Hs fx (s.locals.update (x, v)))
    (hbody : HoareG σ X (APre a (Hs (fx ++ fs))) body (AQ a (Hs fb) Ret))
    (hsub : ∀ f ∈ fo, f ∈ fb) :
    HoareG σ X (APre a (Hs fs)) (.dec x .one e body) (AQ a (Hs fo) Ret) := by
  refine hoareG_decAP hK (P := APre a (Hs fs)) (L := Hs fs) (L' := fun _ => Hs fb)
    (fun _ _ h => h) ?_ (fun m m' _ hL' => hs_res hxo (hs_mono hL' hsub))
  intro s hs hP v hv hsh
  refine hoareG_preA hbody (fun m hm => ?_)
  subst hm
  exact hs_append (hnew s hs hP v hv hsh) (hs_upd hxf hP.2)

/-- Facts that survive an increase of the variable `x`. -/
def Fct.upOK (x : MlS) (W : BitVec 64) : Fct → Prop
  | .bd y _ hi => y = x ∧ W.toNat ≤ hi
  | .rel y z => z = x ∧ y ≠ x
  | _ => False

theorem fct_up {m : Locals} {x : MlS} {X0 W : BitVec 64} (hx : m.lookup x = some (.val (.word X0)))
    (hle : X0.toNat ≤ W.toNat) {f : Fct} (hok : f.upOK x W) (h : f.holds m) :
    f.holds (m.update (x, .val (.word W))) := by
  cases f with
  | bd y lo hi =>
    obtain ⟨rfl, hh⟩ := hok
    obtain ⟨w, hw, h1, h2⟩ := h
    rw [hx] at hw
    cases hw
    exact ⟨W, lookup_update_self _ _ _, by omega, hh⟩
  | rel y z =>
    obtain ⟨rfl, hne⟩ := hok
    obtain ⟨Y, Z, h1, h2, h3⟩ := h
    rw [hx] at h2
    cases h2
    exact ⟨Y, W, by rw [lookup_update_ne _ _ (Ne.symm hne)]; exact h1, lookup_update_self _ _ _,
      by omega⟩
  | eqv y v => exact hok.elim
  | prop y P => exact hok.elim
  | rel2 y z R => exact hok.elim
  | str2 y P => exact hok.elim
  | str3 y1 y2 y3 P => exact hok.elim
  | rel3 y1 y2 y3 R => exact hok.elim

/-- Assigning a larger value to `x`: the facts mentioning `x` are `bd` bounds and `rel _ x`. -/
theorem hs_up {fs : List Fct} {m : Locals} {x : MlS} {X0 W : BitVec 64} (h : Hs fs m)
    (hx : m.lookup x = some (.val (.word X0))) (hle : X0.toNat ≤ W.toNat)
    (hok : ∀ f ∈ fs, x ∈ f.vars → f.upOK x W) : Hs fs (m.update (x, .val (.word W))) := by
  intro f hf
  by_cases hv : x ∈ f.vars
  · exact fct_up hx hle (hok f hf hv) (h f hf)
  · exact fct_upd hv (h f hf)

end InitECandidate.Solver.MemSafe.BalEnc
