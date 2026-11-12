import InitECandidate.Solver.MemSafe.Cell
import InitECandidate.Solver.MemSafe.Alloc
import InitECandidate.Solver.Spec.Inv.BePreserved

/-!
# Allocator windows: marks and releases (M1)

`var m = heap_mark(); ...; heap_release(m);` (and the `scratch` / `frame_mem` versions).
The mark becomes a window temporary `⟨0, .win rg⟩` whose invariant `WinOK` says that the
state after releasing to the token is between the entry state and the current one, keeps
every object live and every object cell old-or-fresh. While a window is open the checker
calls only callees that do not grow `Γ` (`findSig`), so `WinOK` survives calls
(`winOK_after`). The release sets the allocator back to the token: the heap part holds for
the released state (`release_heap`); the temporaries allocated in the activation and every
other window die, the buffer arguments stay (their cells were allocated at entry,
`argCells_bufOK`).

* `WinSpecs σ X`: the specs of the mark and release functions (`MarkSpec'`, `ReleaseSpec`);
  `winSpecs_guest`: from the guest code map (`MemSafe/Alloc.lean`).
* `mark_post`, `release_post`: the two rules.
-/

namespace InitECandidate.Solver.MemSafe
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

/-- The window functions' specifications. -/
def WinSpecs (σ : Type) (X : Ctx 64) : Prop :=
  (∀ f rg, markRg f = some rg → MarkSpec' σ X f rg.global) ∧
  (∀ f rg, relRg f = some rg → ReleaseSpec σ X f rg.global)

theorem markRg_cases {f : MlS} {rg : Region} (h : markRg f = some rg) :
    (f = nm "heap_mark" ∧ rg = .heap) ∨ (f = nm "scratch_mark" ∧ rg = .scratch) ∨
      (f = nm "frame_mem_mark" ∧ rg = .fmem) := by
  unfold markRg at h
  cases h1 : (f == nm "heap_mark")
  · cases h2 : (f == nm "scratch_mark")
    · cases h3 : (f == nm "frame_mem_mark")
      · simp only [h1, h2, h3] at h; cases h
      · simp only [h1, h2, h3, Option.some.injEq] at h
        subst h; exact Or.inr (Or.inr ⟨by simpa using h3, rfl⟩)
    · simp only [h1, h2, Option.some.injEq] at h
      subst h; exact Or.inr (Or.inl ⟨by simpa using h2, rfl⟩)
  · simp only [h1, Option.some.injEq] at h
    subst h; exact Or.inl ⟨by simpa using h1, rfl⟩

theorem relRg_cases {f : MlS} {rg : Region} (h : relRg f = some rg) :
    (f = nm "heap_release" ∧ rg = .heap) ∨ (f = nm "scratch_release" ∧ rg = .scratch) ∨
      (f = nm "frame_mem_release" ∧ rg = .fmem) := by
  unfold relRg at h
  cases h1 : (f == nm "heap_release")
  · cases h2 : (f == nm "scratch_release")
    · cases h3 : (f == nm "frame_mem_release")
      · simp only [h1, h2, h3] at h; cases h
      · simp only [h1, h2, h3, Option.some.injEq] at h
        subst h; exact Or.inr (Or.inr ⟨by simpa using h3, rfl⟩)
    · simp only [h1, h2, Option.some.injEq] at h
      subst h; exact Or.inr (Or.inl ⟨by simpa using h2, rfl⟩)
  · simp only [h1, Option.some.injEq] at h
    subst h; exact Or.inl ⟨by simpa using h1, rfl⟩

theorem winSpecs_guest (hC : X.code.lookup = guestCode) : WinSpecs σ X := by
  refine ⟨fun f rg h => ?_, fun f rg h => ?_⟩
  · rcases markRg_cases h with ⟨rfl, rfl⟩ | ⟨rfl, rfl⟩ | ⟨rfl, rfl⟩
    · exact markSpec'_heap_mark hC
    · exact markSpec'_scratch_mark hC
    · exact markSpec'_frame_mem_mark hC
  · rcases relRg_cases h with ⟨rfl, rfl⟩ | ⟨rfl, rfl⟩ | ⟨rfl, rfl⟩
    · exact releaseSpec_heap_release hC
    · exact releaseSpec_scratch_release hC
    · exact releaseSpec_frame_mem_release hC

theorem funSpec_and {f : MlS}
    {R R' : List (ValueHOL 64) → State σ → PanSemResultExact 64 → State σ → Prop}
    (h : FunSpec σ X f R) (h' : FunSpec σ X f R') :
    FunSpec σ X f (fun vs s r t => R vs s r t ∧ R' vs s r t) :=
  fun vs body callee rs hl s hs hloc r hr =>
    ⟨h vs body callee rs hl s hs hloc r hr, h' vs body callee rs hl s hs hloc r hr⟩

theorem funSpec_be' (f : MlS) : FunSpec σ X f (fun _ s _ t => t.be = s.be) :=
  fun _ body _ _ _ s _ _ _ _ => Inv.be_preserved s body

/-! ## Allocator pointers -/

/-- The allocator pointer of a region. -/
def Ptrs.get (p : Ptrs) : Region → Nat
  | .heap => p.hp
  | .fmem => p.fp
  | .scratch => p.sp

theorem setP_eq (p : Ptrs) (rg : Region) (v : Nat) : AllocImpl.setP p rg v = p.set rg v := by
  cases rg <;> rfl

theorem set_get (p : Ptrs) (rg : Region) : p.set rg (p.get rg) = p := by
  cases rg <;> rfl

theorem set_set (p : Ptrs) (rg : Region) (v w : Nat) : (p.set rg v).set rg w = p.set rg w := by
  cases rg <;> rfl

theorem rg_global_mem (rg : Region) : rg.global ∈ allocG := by
  cases rg <;> simp [allocG, Region.global]

theorem gword_get {s : State σ} {p : Ptrs} (hp : ptrsOf s = some p) (rg : Region) :
    ∃ w, gword s rg.global = some w ∧ w.toNat = p.get rg := by
  obtain ⟨a, b, c, ha, hb, hc, rfl⟩ := AllocImpl.ptrsOf_some hp
  cases rg
  · exact ⟨a, ha, rfl⟩
  · exact ⟨b, hb, rfl⟩
  · exact ⟨c, hc, rfl⟩

theorem set_ordered {p0 p : Ptrs} (h0 : p0.Ordered) (h : p.Ordered) {rg : Region} {v : Nat}
    (h8 : v % 8 = 0) (hm0 : p0.Mono (p.set rg v)) (hm1 : (p.set rg v).Mono p) :
    (p.set rg v).Ordered := by
  unfold Ptrs.Ordered Ptrs.Mono at *
  cases rg <;> simp only [Ptrs.set] at * <;> omega

/-! ## The continuation after a binding call -/

theorem cont_post {a : Act σ} (hH : HooksLawful a.C a.H) {A : AEnv} {Γ Γ' : Gam}
    {Θ Θ' : List (BitVec 64 × Nat)} {s u : State σ} (hl : LocalsOK A Γ Θ s)
    (hlat : Later Γ Θ Γ' Θ') {x : MlS} {rt : List RT} {o : AOut}
    {r : Option (PanSemResultExact 64)} (H : SPost a rt o Γ' Θ' r u) :
    SPost a rt ⟨o.nrm.map (fun B => (⟨restL x (A.L.lookup x) B.L, B.T⟩ : AEnv)),
      o.brk.map (fun B => (⟨restL x (A.L.lookup x) B.L, B.T⟩ : AEnv)),
      o.cnt.map (fun B => (⟨restL x (A.L.lookup x) B.L, B.T⟩ : AEnv))⟩ Γ Θ r
      { u with locals := u.locals.resVarEq (x, s.locals.lookup x) } := by
  rcases r with _ | (_ | _ | _ | _ | _ | _ | _)
  all_goals first
    | (obtain ⟨B, Γ'', Θ'', hB, hlat2, ⟨p', hh2, ht2, hl2⟩⟩ := H
       refine ⟨⟨restL x (A.L.lookup x) B.L, B.T⟩, Γ'', Θ'', by rw [hB]; rfl,
         later_trans hlat hlat2, p', heap_of_locals hH _ hh2, ht2, ?_⟩
       exact locals_restore (later_trans hlat hlat2) hl hl2 x)
    | (obtain ⟨Γ'', p', he, hh2, hr'⟩ := H
       exact ⟨Γ'', p', ext_trans hlat.1 he, heap_of_locals hH _ hh2, hr'⟩)
    | (rcases H with hab | ⟨Γ'', p', he, hh2⟩
       · exact Or.inl hab
       · exact Or.inr ⟨Γ'', p', ext_trans hlat.1 he, heap_of_locals hH _ hh2⟩)

/-! ## Marks -/

/-- A fresh window token is a valid window. -/
theorem win_new {a : Act σ} {Γ : Gam} {p : Ptrs} {s : State σ} (hh : Heap a Γ p s)
    {rg : Region} {w : BitVec 64} (hw : w.toNat = p.get rg) :
    TmpOK a Γ p ⟨0, .win rg⟩ w := by
  obtain ⟨p1, hp1, hord, hL, -⟩ := hh.1
  rw [hh.2.1] at hp1
  cases hp1
  have h8 : w.toNat % 8 = 0 := by
    rw [hw]; unfold Ptrs.Ordered at hord; cases rg <;> simp only [Ptrs.get] <;> omega
  have hset : p.set rg w.toNat = p := by rw [hw]; exact set_get p rg
  refine ⟨fun c ⟨h1, h2, h3⟩ => absurd h3 (by dsimp only; omega), rfl, h8, ?_, ?_, ?_, ?_⟩
  · rw [hset]; exact hh.2.2.1
  · rw [hset]; exact mono_refl p
  · rw [hset]; exact fun o ho => (hL.1 o ho).2.2.2.2
  · rw [hset]; exact hh.2.2.2.2.1

/-- **`var x = mark(); k`.** -/
theorem mark_post {a : Act σ} (ha : ActOK a X) (hWS : WinSpecs σ X) {A : AEnv} {x f : MlS}
    {rg : Region} (hrg : markRg f = some rg) {k : ProgHOL 64} {rt : List RT} {o : AOut}
    (hk : ∀ Γ Θ, HoareG σ X (IG a ⟨setL x (.tmp A.T.length 0) A.L, A.T ++ [some ⟨0, .win rg⟩]⟩
      Γ Θ) k (SPost a rt o Γ Θ))
    (Γ : Gam) (Θ : List (BitVec 64 × Nat)) :
    HoareG σ X (IG a A Γ Θ) (.decCall x .one f [] k)
      (SPost a rt ⟨o.nrm.map (fun B => (⟨restL x (A.L.lookup x) B.L, B.T⟩ : AEnv)),
        o.brk.map (fun B => (⟨restL x (A.L.lookup x) B.L, B.T⟩ : AEnv)),
        o.cnt.map (fun B => (⟨restL x (A.L.lookup x) B.L, B.T⟩ : AEnv))⟩ Γ Θ) := by
  have hf := funSpec_and (hWS.1 f rg hrg) (funSpec_be' f)
  refine hoareG_decCall hf ?_ ?_
  · intro s hs ⟨p, hh, ht, hl⟩ vs hvs callee v st ⟨hR, hbe⟩ hctx _
    have hvs0 : vs = [] := by
      simp only [evs, evalListHOLExact, Option.some.injEq] at hvs; exact hvs.symm
    obtain ⟨hm, hg, hv⟩ := hR (by simp [Good]) hvs0
    obtain ⟨w, hgw, hwp⟩ := gword_get hh.2.1 rg
    have hv' := mark_val_word (hv v rfl) hgw
    subst hv'
    have hd : st.memaddrs = s.memaddrs := hctx.2.1.trans hs.2.1.symm
    have hh1 : Heap a Γ p (setVarHOLFinite x (.val (.word w)) { st with locals := s.locals }) :=
      heap_congr (s := s) ha.hH hm hg hd hbe hh
    have ht1 := temps_push ht (win_new hh hwp) (setL x (.tmp A.T.length 0) A.L)
    have hvok : VOk Γ (Θ ++ [(w, 0)]) (.tmp A.T.length 0) (.val (.word w)) := by
      refine ⟨w, rfl, w, 0, ?_, by simp⟩
      rw [List.getElem?_append_right (by rw [ht.1]), ht.1]
      simp
    have hl1 : LocalsOK ⟨setL x (.tmp A.T.length 0) A.L, A.T ++ [some ⟨0, .win rg⟩]⟩ Γ
        (Θ ++ [(w, 0)]) (setVarHOLFinite x (.val (.word w)) { st with locals := s.locals }) :=
      fun y bv hy => locals_set (s := { st with locals := s.locals })
        (locals_mono (List.prefix_append Θ [(w, 0)]) hl) hvok y bv hy
    intro t htc hst hgood
    subst hst
    exact cont_post ha.hH hl ⟨ext_refl Γ, List.prefix_append _ _⟩
      (hk Γ _ _ htc ⟨p, hh1, ht1, hl1⟩ hgood)
  · intro s hs ⟨p, hh, ht, hl⟩ vs hvs callee r st ⟨hR, hbe⟩ hctx habn
    have hvs0 : vs = [] := by
      simp only [evs, evalListHOLExact, Option.some.injEq] at hvs; exact hvs.symm
    have hg0 : Good (some r) := by
      rcases habn with ⟨e, v, rfl⟩ | ⟨e, rfl⟩ <;> simp [Good]
    obtain ⟨hm, hg, -⟩ := hR hg0 hvs0
    have hd : st.memaddrs = s.memaddrs := hctx.2.1.trans hs.2.1.symm
    have hh1 := heap_congr (s := s) (t := emptyLocalsHOLFinite st) ha.hH hm hg hd hbe hh
    rcases habn with ⟨e, v, rfl⟩ | ⟨e, rfl⟩
    · exact Or.inr ⟨Γ, p, ext_refl Γ, hh1⟩
    · exact Or.inr ⟨Γ, p, ext_refl Γ, hh1⟩

/-! ## Releases -/

/-- A buffer-argument cell was writable at entry. -/
theorem argCells_bufOK {C : Cfg} {Γ0 : Gam} {p0 : Ptrs} {ps : List PT}
    {vs : List (ValueHOL 64)} (h : ArgsOK C Γ0 p0 ps vs) {c : BitVec 64}
    (hc : ArgCells ps vs c) : SCell C Γ0 c ∨ (¬ InObj Γ0 c.toNat ∧ p0.Allocated c.toNat) := by
  obtain ⟨i, w, hw, hcase⟩ := hc
  unfold argW at hw
  cases hv : vs[i]? with
  | none => rw [hv] at hw; cases hw
  | some v =>
      rw [hv] at hw
      simp only at hw
      rcases hcase with ⟨n, hpi, hov⟩ | ⟨j, c', d, x, hpi, hx, hov⟩
      · obtain ⟨w', hw', hb⟩ := h.2 i (.buf n) v hpi hv
        rw [hw] at hw'
        cases hw'
        exact hb c hov
      · obtain ⟨w', x', hw', hx', hb⟩ := h.2 i (.bufArg j c' d) v hpi hv
        rw [hw] at hw'
        cases hw'
        rw [hx] at hx'
        cases hx'
        exact hb c hov

/-- The heap part after releasing a window. -/
theorem release_heap {a : Act σ} (ha : ActOK a X) {Γ : Gam} {p : Ptrs} {s t : State σ}
    (hh : Heap a Γ p s) {rg : Region} {q : BitVec 64} (hw : WinOK a Γ p rg q)
    (hm : t.memory = s.memory) (hg1 : t.globals.lookup rg.global = some (.val (.word q)))
    (hg2 : ∀ g, g ≠ rg.global → t.globals.lookup g = s.globals.lookup g)
    (hd : t.memaddrs = s.memaddrs) (hb : t.be = s.be) : Heap a Γ (p.set rg q.toNat) t := by
  obtain ⟨⟨p1, hp1, hord, hL, hF, hT, hGl, hW⟩, hps, hmono, hext, hnf, hmod, hpg, hng⟩ := hh
  rw [hps] at hp1
  cases hp1
  obtain ⟨h8, hm0, hm1, hlive, hnf0⟩ := hw
  have hpt : ptrsOf t = some (p.set rg q.toNat) := by
    rw [← setP_eq]; exact AllocImpl.ptrsOf_set hps rg hg1 hg2
  have hord' := set_ordered ha.hord0 hord h8 hm0 hm1
  have hpgk : ∀ g ∈ a.C.PG, t.globals.lookup g = s.globals.lookup g := fun g hg =>
    hg2 g (fun he => (ha.hAC _ (rg_global_mem rg)).2 (he ▸ hg))
  refine ⟨⟨_, hpt, hord', ⟨fun o ho => ⟨(hL.1 o ho).1, (hL.1 o ho).2.1, (hL.1 o ho).2.2.1,
    (hL.1 o ho).2.2.2.1, hlive o ho⟩, hL.2⟩, hm ▸ hF, hm ▸ hT, ?_, ?_⟩, hpt, hm0, hext, hnf0,
    hm ▸ hmod, fun g hg hgw => (hpgk g hg).trans (hpg g hg hgw), hng⟩
  · intro g kd hk
    have hna : g ≠ rg.global := by
      intro he
      rw [he, (ha.hAC _ (rg_global_mem rg)).1] at hk
      cases hk
    obtain ⟨v, hv, hf⟩ := hGl g kd hk
    exact ⟨v, by unfold gword; rw [hg2 g hna]; exact hv, hf⟩
  · exact fun o ho => (ha.hH.2 Γ s t o (hW o ho) hd hb (fun x _ => by rw [hm]) hpgk).1

/-- The temporaries after releasing window `k`. -/
theorem release_temps {a : Act σ} (ha : ActOK a X) {A : AEnv} {Γ : Gam} {p : Ptrs}
    {Θ : List (BitVec 64 × Nat)} {s : State σ} (hh : Heap a Γ p s) (ht : TempsOK a A Γ p Θ)
    {k : Nat} {rg : Region} (hk : A.T[k]? = some (some ⟨0, .win rg⟩)) {q : BitVec 64}
    (hq : Θ[k]? = some (q, 0)) (hw : WinOK a Γ p rg q) (L : List (MlS × AV)) :
    TempsOK a ⟨L, relT k A.T⟩ Γ (p.set rg q.toNat) Θ := by
  refine ⟨by simp [relT, ht.1], fun j td hj => ?_⟩
  simp only [relT, List.getElem?_mapIdx] at hj
  cases hT : A.T[j]? with
  | none => rw [hT] at hj; cases hj
  | some t0 =>
      rw [hT] at hj
      simp only [Option.map_some, Option.some.injEq] at hj
      by_cases hjk : j = k
      · subst hjk
        rw [if_pos rfl] at hj
        rw [hk] at hT
        cases hT
        cases hj
        obtain ⟨h8, hm0, -, hlive, hnf0⟩ := hw
        refine ⟨q, hq, fun c ⟨h1, h2, h3⟩ => absurd h3 (by dsimp only; omega), rfl, h8, ?_, ?_, ?_, ?_⟩
        · rw [set_set]; exact hm0
        · rw [set_set]; exact mono_refl _
        · rw [set_set]; exact hlive
        · rw [set_set]; exact hnf0
      · rw [if_neg hjk] at hj
        split at hj
        · rename_i n i
          cases hj
          obtain ⟨qj, hqj, hbuf, hprov⟩ := ht.2 j ⟨n, .arg i⟩ hT
          refine ⟨qj, hqj, fun c hc => ?_, hprov⟩
          rcases argCells_bufOK ha.hargs0 (hprov c hc) with hs0 | ⟨-, ha0⟩
          · exact Or.inl (scell_ext hh.2.2.2.1 hs0)
          · rcases hbuf c hc with hs | ⟨hn, -⟩
            · exact Or.inl hs
            · exact Or.inr ⟨hn, alloc_mono hw.2.1 ha0⟩
        · cases hj

/-- **`release(x);`** with `x` a window token of the same region. -/
theorem release_post {a : Act σ} (ha : ActOK a X) (hWS : WinSpecs σ X) {E : CEnv}
    (hE : E.C = a.C) {A : AEnv} {f : MlS} {rg : Region} (hrg : relRg f = some rg)
    {e : ExpHOL 64} {k : Nat} (hav : aev E.C A chkFuel e = .tmp k 0)
    (hk : A.T[k]? = some (some ⟨0, .win rg⟩)) (rt : List RT) (Γ : Gam)
    (Θ : List (BitVec 64 × Nat)) :
    HoareG σ X (IG a A Γ Θ) (.call (some (none, none)) f [e])
      (SPost a rt (.normal ⟨A.L, relT k A.T⟩) Γ Θ) := by
  have hf := funSpec_and (hWS.2 f rg hrg) (funSpec_be' f)
  -- the argument is the window token
  have key : ∀ (s : State σ) (p : Ptrs), Heap a Γ p s → TempsOK a A Γ p Θ →
      LocalsOK A Γ Θ s → InCtx s X → ∀ vs, evs s [e] = some vs →
      ∃ q, vs = [.val (.word q)] ∧ Θ[k]? = some (q, 0) ∧ WinOK a Γ p rg q := by
    intro s p hh ht hl hs vs hvs
    obtain ⟨hlen, hvok⟩ := evs_aev hh.1 hl (ns_of ha hs) [e] vs hvs
    obtain ⟨v0, rfl⟩ := List.length_eq_one_iff.mp (by simpa using hlen)
    have h0 := hvok 0 (by simp) (by simp)
    simp only [List.getElem_cons_zero] at h0
    rw [← hE, hav] at h0
    obtain ⟨w, hv0, q', n', hq', hwe⟩ := h0
    obtain ⟨q, hq, -, hprov⟩ := ht.2 k _ hk
    rw [hq] at hq'
    simp only [Option.some.injEq, Prod.mk.injEq] at hq'
    have hqq : q' = q := hq'.1.symm
    rw [hqq] at hwe
    have hwq : w = q := by rw [hwe]; simp
    rw [hv0, hwq]
    exact ⟨q, rfl, hq, hprov.2⟩
  refine hoareG_callD hf ?_ ?_
  · intro s hs ⟨p, hh, ht, hl⟩ vs hvs callee v st ⟨hR, hbe⟩ hctx
    obtain ⟨q, rfl, hq, hW⟩ := key s p hh ht hl hs vs hvs
    obtain ⟨hm, hg1, hg2⟩ := hR (by simp [Good]) q rfl
    have hd : st.memaddrs = s.memaddrs := hctx.2.1.trans hs.2.1.symm
    refine ⟨_, Γ, Θ, rfl, later_refl Γ Θ, p.set rg q.toNat, ?_,
      release_temps ha hh ht hk hq hW _, hl⟩
    exact heap_congr (s := st) ha.hH rfl rfl rfl rfl (release_heap ha hh hW hm hg1 hg2 hd hbe)
  · intro s hs ⟨p, hh, ht, hl⟩ vs hvs callee r st ⟨hR, hbe⟩ hctx habn
    obtain ⟨q, rfl, hq, hW⟩ := key s p hh ht hl hs vs hvs
    have hg0 : Good (some r) := by
      rcases habn with ⟨e, v, rfl⟩ | ⟨e, rfl⟩ <;> simp [Good]
    obtain ⟨hm, hg1, hg2⟩ := hR hg0 q rfl
    have hd : st.memaddrs = s.memaddrs := hctx.2.1.trans hs.2.1.symm
    have hh1 := heap_congr (s := st) (t := emptyLocalsHOLFinite st) ha.hH rfl rfl rfl rfl
      (release_heap ha hh hW hm hg1 hg2 hd hbe)
    rcases habn with ⟨e, v, rfl⟩ | ⟨e, rfl⟩
    · exact Or.inr ⟨Γ, _, ext_refl Γ, hh1⟩
    · exact Or.inr ⟨Γ, _, ext_refl Γ, hh1⟩

end InitECandidate.Solver.MemSafe
