import InitECandidate.Solver.MemSafe.Ops.BufCall

/-!
# Value specs for the account-address helpers (sonnet-ops)

* `tam_spec`: `to_address_masked(v)` returns `ev + 240` (the running EV's address scratch).
* `agc_spec`: `access_gas_cost(addr)` returns `100` or `3000`.
Both from a Hoare proof against the trivial specs of their callees (only the returned value is
claimed).
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Frames
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe.Types

variable {σ : Type} {X : Ctx 64}

/-- `f(args); q` for a callee with no claims: only the locals are known afterwards. -/
theorem hoare_callThen {s : State σ} {f : MlS} {args : List (ExpHOL 64)} {q : ProgHOL 64}
    {Qf : Option (PanSemResultExact 64) → State σ → Prop}
    (hq : ∀ u : State σ, u.locals = s.locals → HoareG σ X (fun t => t = u) q Qf)
    (habn : ∀ (r : PanSemResultExact 64) (t : State σ), Abn r → Qf (some r) t) :
    HoareG σ X (fun t => t = s) (.seq (callD f args) q) Qf := by
  refine hoareG_seq (R := fun ro t => (ro = none ∧ t.locals = s.locals) ∨
      ∃ r, ro = some r ∧ Abn r)
    (hoareG_callD (funSpec_true f) ?_ ?_) ?_ (hoareG_pt fun u hu => ?_)
  · intro s' _ hs' vs hvs callee v st _ _
    subst hs'
    exact Or.inl ⟨rfl, rfl⟩
  · intro s' _ hs' vs hvs callee r st _ _ habn'
    exact Or.inr ⟨r, rfl, habn'⟩
  · intro r t _ hr _ h
    rcases h with ⟨h, -⟩ | ⟨r', hr', hab⟩
    · exact absurd h hr
    · cases hr'; exact habn r' t hab
  · rcases hu with ⟨-, hl⟩ | ⟨r, hr, -⟩
    · exact hq u hl
    · cases hr

def tamBody : ProgHOL 64 :=
  .dec (nm "a") .one (.op .add [gv (nm "ev"), cw 240])
    (.seq (callD (nm "st_be32") [lv (nm "a"), .rfield 2 (lv (nm "v"))])
      (.seq (callD (nm "st_be64") [.op .add [lv (nm "a"), cw 4], .rfield 1 (lv (nm "v"))])
        (.seq (callD (nm "st_be64") [.op .add [lv (nm "a"), cw 12], .rfield 0 (lv (nm "v"))])
          (.return (lv (nm "a"))))))

theorem tamBody_eq : (declPair Guest.Software.guestFn_to_address_masked).2.2 = tamBody := by
  conv => lhs; cbv
  rfl

/-- **`to_address_masked`'s value**: `ev + 240`. -/
theorem tam_spec : FunSpec σ guestCtx (nm "to_address_masked")
    (fun vs s r t => Good (some r) → ∀ v, r = .returned v →
      ∃ G, gword s nmEv = some G ∧ v = .val (.word (G + BitVec.ofNat 64 240))) := by
  obtain ⟨_, hcode⟩ : PairValid (declPair Guest.Software.guestFn_to_address_masked) :=
    declPair_valid (List.getElem_mem (n := 444) (by decide)) ⟨_, rfl⟩
  refine funSpec_of_hoareG fun vs body callee rs hl s0 _ hloc => ?_
  rw [guestCtx_code] at hl
  obtain ⟨ps', hps, -⟩ := lookupCode_k hl
  have hcode' : guestCode (nm "to_address_masked") = some _ := hcode
  rw [hcode'] at hps
  simp only [Option.some.injEq, Prod.mk.injEq] at hps
  obtain ⟨-, rfl, -⟩ := hps
  rw [tamBody_eq]
  refine hoareG_dec fun s _ hs v hv hsh => ?_
  subst hs
  obtain ⟨w, rfl⟩ := ev_op_word hv
  obtain ⟨y, z, hy, hz, rfl⟩ := ev_add2_inv hv
  rw [ev_cw] at hz
  simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hz
  subst hz
  have hG : gword s nmEv = some y := gword_of hy
  have hfin : ∀ (t : State σ), t.locals.lookup (nm "a") = some (.val (.word (y + BitVec.ofNat 64 240))) →
      HoareG σ guestCtx (fun u => u = t) (.return (lv (nm "a")))
        (fun r t' => ∀ r', r = some r' → ∀ v', r' = .returned v' →
          ∃ G, gword s nmEv = some G ∧ v' = .val (.word (G + BitVec.ofNat 64 240))) := by
    intro t ht
    refine hoareG_return fun u _ hu v' hv' => ?_
    subst hu
    rw [ev_lv, ht, Option.some.injEq] at hv'
    subst hv'
    intro r' hr' v'' hv''
    simp only [Option.some.injEq] at hr'
    subst hr'
    simp only [PanSemResultExact.returned.injEq] at hv''
    subst hv''
    exact ⟨y, hG, rfl⟩
  have hl0 : (setVarHOLFinite (nm "a") (.val (.word (y + BitVec.ofNat 64 240))) s).locals.lookup (nm "a") =
      some (.val (.word (y + BitVec.ofNat 64 240))) := lk_set_self _ _ _
  have habn : ∀ (r : PanSemResultExact 64) (t : State σ), Abn r → ∀ r', some r = some r' →
      ∀ v', r' = .returned v' →
        ∃ G, gword s nmEv = some G ∧ v' = .val (.word (G + BitVec.ofNat 64 240)) := by
    intro r t hab r' hr' v' hv'
    simp only [Option.some.injEq] at hr'
    subst hr'
    rcases hab with ⟨e, v, rfl⟩ | ⟨e, rfl⟩ <;> cases hv'
  exact hoare_callThen (fun u1 hu1 => hoare_callThen (fun u2 hu2 => hoare_callThen
    (fun u3 hu3 => hfin u3 (by rw [hu3, hu2, hu1]; exact hl0)) habn) habn) habn

def agcBody : ProgHOL 64 :=
  .decCall (nm "w") .one (nm "is_warm_address") [lv (nm "addr")]
    (.seq (.ite (.cmp .notEqual (lv (nm "w")) (cw 0)) (.return (cw 100)) .skip)
      (.return (cw 3000)))

theorem agcBody_eq : (declPair Guest.Software.guestFn_access_gas_cost).2.2 = agcBody := by
  conv => lhs; cbv
  rfl

/-- **`access_gas_cost`'s value**: `100` or `3000`. -/
theorem agc_spec : FunSpec σ guestCtx (nm "access_gas_cost")
    (fun vs s r t => Good (some r) → ∀ v, r = .returned v →
      v = .val (.word (BitVec.ofNat 64 100)) ∨ v = .val (.word (BitVec.ofNat 64 3000))) := by
  obtain ⟨_, hcode⟩ : PairValid (declPair Guest.Software.guestFn_access_gas_cost) :=
    declPair_valid (List.getElem_mem (n := 473) (by decide)) ⟨_, rfl⟩
  refine funSpec_of_hoareG fun vs body callee rs hl s0 _ hloc => ?_
  rw [guestCtx_code] at hl
  obtain ⟨ps', hps, -⟩ := lookupCode_k hl
  have hcode' : guestCode (nm "access_gas_cost") = some _ := hcode
  rw [hcode'] at hps
  simp only [Option.some.injEq, Prod.mk.injEq] at hps
  obtain ⟨-, rfl, -⟩ := hps
  rw [agcBody_eq]
  have habn : ∀ (r : PanSemResultExact 64), Abn r → ∀ r', some r = some r' →
      ∀ v', r' = .returned v' →
        v' = .val (.word (BitVec.ofNat 64 100)) ∨ v' = .val (.word (BitVec.ofNat 64 3000)) := by
    intro r hab r' hr' v' hv'
    simp only [Option.some.injEq] at hr'
    subst hr'
    rcases hab with ⟨e, v, rfl⟩ | ⟨e, rfl⟩ <;> cases hv'
  refine hoareG_decCall (funSpec_true (nm "is_warm_address")) ?_ (fun s _ _ vs hvs callee r st _ _ hab =>
    habn r hab)
  intro s _ hs vs hvs callee v st _ _ hsh
  refine hoareG_seq (R := fun ro (t : State σ) => ro = none ∨
      ro = some (.returned (.val (.word (BitVec.ofNat 64 100))))) ?_ ?_ ?_
  · refine hoareG_ite (hoareG_return fun u _ _ v' hv' => ?_) (hoareG_skip fun u _ _ => ?_)
    · rw [ev_cw] at hv'
      cases hv'
      exact Or.inr rfl
    · exact Or.inl rfl
  · intro r t _ hr _ h
    rcases h with h | h
    · exact absurd h hr
    · cases h
      intro r' hr' v' hv'
      simp only [Option.some.injEq] at hr'
      subst hr'
      simp only [PanSemResultExact.returned.injEq] at hv'
      subst hv'
      exact Or.inl rfl
  · refine hoareG_return fun u _ _ v' hv' => ?_
    rw [ev_cw] at hv'
    cases hv'
    intro r' hr' v'' hv''
    simp only [Option.some.injEq] at hr'
    subst hr'
    simp only [PanSemResultExact.returned.injEq] at hv''
    subst hv''
    exact Or.inr rfl

/-- **The address scratch of the running EV is a writable 20-byte block**: `ev + 240`. -/
theorem evAddr_bufOK {H : Hooks σ} (hF : FrameCfg guestC H tEV tCK) {Γ : Gam} {s : State σ}
    {p : Ptrs} (hG : G guestC H Γ s) (hps : ptrsOf s = some p) {o : Obj} (hev : EvRun tEV Γ s o) :
    BufOK guestC Γ p (o.base + BitVec.ofNat 64 240).toNat 20 := by
  obtain ⟨q, hq, hord, hL, -⟩ := id hG
  obtain rfl : p = q := Option.some.inj (hps.symm.trans hq)
  obtain ⟨hoe, hoet, -⟩ := hev
  have hsz := ev_size hF hL hoe hoet
  have hal := (hL.1 o hoe).1
  have h240 := cell_addr hord hL hoe (k := 240) (by omega)
  rintro a ⟨ha8, hlo, hhi⟩
  left
  rw [h240] at hlo hhi
  have hk : a.toNat = o.lo + 240 ∨ a.toNat = o.lo + 248 ∨ a.toNat = o.lo + 256 := by omega
  have hcell : ∀ k, k ≤ 32 → o.lo + 8 * k = a.toNat → o.HasSlot k ∧ a = o.cell k := by
    intro k hk8 hka
    refine ⟨by unfold Obj.HasSlot; omega, ?_⟩
    apply BitVec.eq_of_toNat_eq
    rw [(cell_toNat hord hL hoe (k := k) (by unfold Obj.HasSlot; omega)).1]
    omega
  have hsc : ∀ k, k = 30 ∨ k = 31 ∨ k = 32 → (guestC.ty o.ty).slot k = .scalar := by
    intro k hk3
    rw [hoet]
    rcases hk3 with rfl | rfl | rfl <;> decide
  rcases hk with hk | hk | hk
  · obtain ⟨h1, h2⟩ := hcell 30 (by omega) (by omega)
    exact ⟨o, hoe, 30, h1, hsc 30 (by omega), h2⟩
  · obtain ⟨h1, h2⟩ := hcell 31 (by omega) (by omega)
    exact ⟨o, hoe, 31, h1, hsc 31 (by omega), h2⟩
  · obtain ⟨h1, h2⟩ := hcell 32 (by omega) (by omega)
    exact ⟨o, hoe, 32, h1, hsc 32 (by omega), h2⟩

end InitECandidate.Solver.MemSafe.Frames
