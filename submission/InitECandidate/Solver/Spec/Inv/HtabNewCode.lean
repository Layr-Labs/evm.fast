import InitECandidate.Solver.Spec.Inv.Alloc

/-!
# `htab_new`: certified code; the `var x = alloc(n); k` step
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option cbv.warning false

namespace InitECandidate.Solver.Spec.Inv
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

def szE (k : ExpHOL 64) : ExpHOL 64 := .panop .mul [.op .add [lv (nm "ncap"), cw 1], k]

def newTail : ProgHOL 64 :=
  .seq (.store (tAddr 48) (lv (nm "order")))
    (.seq (.store (tAddr 56) (cw 0))
      (.seq (.store (tAddr 64) (cw 1))
        (.seq (.store (tAddr 72) (cw 0))
          (.seq (.store (tAddr 80) (lv (nm "ncap"))) (.return (lv (nm "t")))))))

def newArrays : ProgHOL 64 :=
  .decCall (nm "keys") .one (nm "alloc") [szE (lv (nm "stride"))]
    (.seq (.store (tAddr 32) (lv (nm "keys")))
      (.decCall (nm "nodes") .one (nm "alloc") [szE (cw 32)]
        (.seq (.store (tAddr 40) (lv (nm "nodes")))
          (.decCall (nm "order") .one (nm "alloc") [szE (cw 8)] newTail))))

def newBody : ProgHOL 64 :=
  .decCall (nm "t") .one (nm "alloc") [cw 88]
    (.dec (nm "stride") .one (.op .and [.op .add [lv (nm "key_len"), cw 7], .op .sub [cw 0, cw 8]])
      (.dec (nm "ncap") .one (lv (nm "cap"))
        (.seq (.ite (.cmp .lower (lv (nm "ncap")) (cw 2)) (.assign .local (nm "ncap") (cw 2)) .skip)
          (.seq (.store (tAddr 0) (lv (nm "key_len")))
            (.seq (.store (tAddr 8) (lv (nm "stride")))
              (.seq (.store (tAddr 16) (lv (nm "cap")))
                (.seq (.store (tAddr 24) (cw 0)) newArrays)))))))

def newParams : List (MlS × ShapeHOL) := [(nm "key_len", .one), (nm "cap", .one)]

theorem entry_htab_new : fnEntry Guest.Software.guestFn_htab_new =
    (nm "htab_new", newParams, newBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_htab_new : guestCode (nm "htab_new") = some (newParams, newBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 128) (by decide)) ⟨_, rfl⟩
    entry_htab_new

variable {σ : Type} {X : Ctx 64}

theorem funSpec_alloc_full (hC : X.code.lookup = guestCode) :
    FunSpec σ X (nm "alloc") (fun vs s r t => (∀ v, r = .returned v → AllocRetH vs s v t) ∧
      t.be = s.be) :=
  (funSpec_alloc hC).and (funSpec_be _)

/-- **`var x = alloc(n); k`** for an 8-aligned heap pointer `P0 ≤ HEAP_END` and a size that is
a multiple of 8: `x = P0` and the heap pointer becomes `P0 + n`, which is at most `HEAP_END`. -/
theorem hoare_decCall_alloc (hC : X.code.lookup = guestCode) {P : PanSemStateFiniteExact 64 σ → Prop}
    {Q : Option (PanSemResultExact 64) → PanSemStateFiniteExact 64 σ → Prop}
    {x : MlS} {sz : ExpHOL 64} {k : ProgHOL 64}
    (hpre : ∀ u, P u → ∃ P0 Nz : BitVec 64, u.globals.lookup hpN = some (.val (.word P0)) ∧
      P0.toNat ≤ heapEnd ∧ P0.toNat % 8 = 0 ∧ ev u sz = some (.val (.word Nz)) ∧ Nz.toNat % 8 = 0)
    (hk : ∀ u, InCtx u X → P u → ∀ P0 Nz : BitVec 64 , ∀ st : PanSemStateFiniteExact 64 σ,
      u.globals.lookup hpN = some (.val (.word P0)) → ev u sz = some (.val (.word Nz)) →
      st.memory = u.memory → st.globals.lookup hpN = some (.val (.word (P0 + Nz))) →
      (∀ g, g ≠ hpN → st.globals.lookup g = u.globals.lookup g) → st.be = u.be →
      st.memaddrs = u.memaddrs → P0.toNat + Nz.toNat ≤ heapEnd →
      Hoare σ X (fun t => t = setVarHOLFinite x (.val (.word P0)) { st with locals := u.locals }) k
        (fun r t => Q r { t with locals := t.locals.resVarEq (x, u.locals.lookup x) })) :
    Hoare σ X P (.decCall x .one (nm "alloc") [sz] k) Q := by
  refine hoare_decCallS (funSpec_alloc_full hC) fun u hu hp vs hvs callee v st hR hst hsh => ?_
  obtain ⟨P0, Nz, hP0, hle, h8, hsz, hN8⟩ := hpre u hp
  obtain ⟨hAR, hbe⟩ := hR
  obtain ⟨N, P0', Q', hvs', hP0', rfl, hQ', hgl, hm, h1, hQv, hQle⟩ := hAR v rfl
  obtain ⟨a, r1, rfl, ha, hr1⟩ := evs_cons_inv hvs
  have hr : r1 = [] := by
    have h0 : evs u ([] : List (ExpHOL 64)) = some [] := evs_nil
    rw [h0] at hr1; exact (Option.some.inj hr1).symm
  subst hr
  rw [hsz] at ha
  have ha' := (Option.some.inj ha).symm
  subst ha'
  simp only [List.cons.injEq, and_true, ValueHOL.val.injEq, HolWordLab.word.injEq] at hvs'
  subst hvs'
  have hP0e : P0' = P0 := by
    have : (callEntryStateHOLFinite u callee).globals.lookup hpN = some (.val (.word P0')) := hP0'
    rw [show (callEntryStateHOLFinite u callee).globals = u.globals from rfl, hP0] at this
    simpa using this.symm
  subst hP0e
  obtain ⟨hsum, hge, hQ8, hlt⟩ := allocH_nat hle h8 h1 hQv
  have hQeq : Q' = P0' + Nz := by
    apply BitVec.eq_of_toNat_eq
    have : (P0' + Nz).toNat = P0'.toNat + Nz.toNat := by
      rw [BitVec.toNat_add]; apply Nat.mod_eq_of_lt; have : heapEnd < 2 ^ 64 := by decide
      omega
    rw [this]; omega
  subst hQeq
  have hd : st.memaddrs = u.memaddrs := by rw [hst.2.1, hu.2.1]
  exact hk u hu hp P0' Nz st hP0 hsz hm hQ' hgl hbe hd hsum

end InitECandidate.Solver.Spec.Inv
