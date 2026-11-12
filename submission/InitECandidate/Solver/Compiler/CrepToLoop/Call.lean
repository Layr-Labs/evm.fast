import InitECandidate.Solver.Compiler.CrepToLoop.While
import Flapjack.Pancake.CrepToLoop.Proofs.NCompileCorrect.Call
import Batteries.Tactic.OpenPrivate

/-!
# Bounded `Call` case

Copy of Flapjack's `crepToLoop_ncompile_correct_call` (`NCompileCorrect/Call.lean`) over the
bounded motive; the proof is unchanged except for the extra bound conjuncts. Witnesses
(`ck` is the argument code, `≤ esizeL args`; `ck'` the callee body; `ck''` the handler):
time-out `ck`; tail call `ck + ck'`; returning call `ck + ck' + 1` (the return `cut_res`);
uncaught exception `ck + ck'`; caught exception `ck + ck' + ck'' + 3` (handler `Tick`, the
handler `If`'s and the call's `cut_res`) or `ck + ck' + ck'' + 1`. The callee body has
`csize ≤ S` (`CodeBoundedC`), and the source `dec_clock` of the call pays for it:
`ck' + (S + 1) * callee_post.clock + 1 ≤ (S + 1) * caller.clock`.
-/

namespace InitECandidate.Solver.Compiler.CrepToLoop

open Flapjack Flapjack.Pancake.CrepToLoop.Proofs.NCompileCorrect

set_option autoImplicit false

open private holAlookup_zip_not_mem' locals_rel_after_return locals_rel_inter
  from Flapjack.Pancake.CrepToLoop.Proofs.NCompileCorrect.Call

variable {width : Nat} [NeZero width] {σ : Type}

/-- Bounded `Call` case. -/
theorem call_bounded (S : Nat)
    (caltyp : Option (List Nat × Option (BitVec width × CrepProgHOL width)))
    (fname : Flapjack.Basis.Pure.MlString.MlString) (argexps : List (CrepExpHOL width))
    (v1 : CrepSemHOLState width σ)
    (ihh : ∀ (args : List (HolWordLab width)) (prog : CrepProgHOL width)
        (newlocals : HolFiniteMapExact Nat (HolWordLab width))
        (st : CrepSemHOLState width σ) (eid : BitVec width) (rts : List Nat)
        (p : CrepProgHOL width),
      argexps.mapM (evalCrepSemHOLExp v1) = some args ∧
        lookupCodeFiniteHOL v1.code fname args args.length = some (prog, newlocals) ∧
        ¬ (match caltyp with | none => False | some (rts, _) => ¬ rts.Nodup) ∧
        v1.clock ≠ 0 ∧
        evalCrepSemHOLProgExact { decClockCrepSemHOL v1 with locals := newlocals } prog =
          (some (.exception eid), st) ∧
        caltyp = some (rts, some (eid, p)) →
      PropertyAtB S p { st with locals := v1.locals })
    (ihb : ∀ (args : List (HolWordLab width)) (prog : CrepProgHOL width)
        (newlocals : HolFiniteMapExact Nat (HolWordLab width)),
      argexps.mapM (evalCrepSemHOLExp v1) = some args ∧
        lookupCodeFiniteHOL v1.code fname args args.length = some (prog, newlocals) ∧
        ¬ (match caltyp with | none => False | some (rts, _) => ¬ rts.Nodup) ∧
        v1.clock ≠ 0 →
      PropertyAtB S prog { decClockCrepSemHOL v1 with locals := newlocals }) :
    PropertyAtB S (.call caltyp fname argexps) v1 := by
  intro hsz hcb res s1 t ctxt l he hne hs hm hg hc hl
  have hcge := csize_call_ge caltyp fname argexps
  rw [evalCrepSemHOLProgExact_eq_evaluate_def] at he
  simp only at he
  cases hargs : argexps.mapM (evalCrepSemHOLExp v1) with
  | none =>
    simp only [hargs, Prod.mk.injEq] at he
    exact absurd he.1.symm hne
  | some args =>
  simp only [hargs] at he
  cases hlc : lookupCodeFiniteHOL v1.code fname args args.length with
  | none =>
    simp only [hlc, Prod.mk.injEq] at he
    exact absurd he.1.symm hne
  | some pn =>
  obtain ⟨prog, newlocals⟩ := pn
  simp only [hlc] at he
  -- the callee, from `lookup_code` and `code_rel`
  obtain ⟨ns, hcode, hnslen, hnsnd, rfl⟩ : ∃ ns, v1.code.lookup fname = some (ns, prog) ∧
      ns.length = args.length ∧ ns.Nodup ∧
      newlocals = HolFiniteMapExact.empty.updateList (ns.zip args) := by
    unfold lookupCodeFiniteHOL at hlc
    cases hcf : v1.code.lookup fname with
    | none => simp [hcf] at hlc
    | some q =>
      obtain ⟨ns, body⟩ := q
      simp only [hcf] at hlc
      by_cases hok : ns.length = args.length ∧ ns.Nodup
      · rw [if_pos hok] at hlc
        simp only [Option.some.injEq, Prod.mk.injEq] at hlc
        obtain ⟨rfl, rfl⟩ := hlc
        exact ⟨ns, rfl, hok.1, hok.2, rfl⟩
      · rw [if_neg hok] at hlc; cases hlc
  have hszp : csize prog ≤ S := hcb fname ns prog hcode
  -- compiled arguments
  rcases hC : compileExpsHOLExact ctxt (ctxt.vmax + 1) l argexps with ⟨p, les, ntmp, nl⟩
  obtain ⟨ck, st, h1, hles, h1s, h1m, h1g, h1c, h1l, hck⟩ :=
    compExps_bounded argexps v1 args t ctxt (ctxt.vmax + 1) l p les ntmp nl
      ⟨hargs, hs, hm, hg, hc, hl, hC, Nat.lt_succ_self _⟩
  obtain ⟨hokA, htA, hlA, hlesLen⟩ := compile_exp_out_rel_cases.2 ctxt (ctxt.vmax + 1) l argexps p
    les ntmp nl hC
  have hlen : les.length = args.length := by
    have := congrArg List.length ((optMmapEqSome les _ _).mp hles)
    simpa using this
  obtain ⟨hdf, hcodeF⟩ := h1c
  obtain ⟨loc, len, hfl, hnlen, hcl⟩ := hcodeF fname ns prog hcode
  -- the argument temporaries (as in the Return case)
  let temps := genTemps ntmp les.length
  have htlen : temps.length = les.length := by simp [temps, genTemps]
  have htnodup : temps.Nodup := by
    simp only [temps, genTemps]
    rw [List.Nodup, List.pairwise_map]
    exact (List.nodup_range).imp (fun h => by omega)
  have hdisj : distinctListsHol temps (les.map holLoopLocalsTouched).flatten = true := by
    simp only [distinctListsHol, List.all_eq_true, decide_eq_true_eq]
    intro x hx hmem
    have hx' : ntmp ≤ x := by
      simp only [temps, genTemps, List.mem_map, List.mem_range] at hx
      obtain ⟨a, _, rfl⟩ := hx; omega
    have := (compile_exps_le_tmp_domain ctxt (ctxt.vmax + 1) l argexps p les ntmp nl x
      ⟨hl.2.1, hC, Nat.lt_succ_self _, fun k hk => by
        obtain ⟨w, hw⟩ := crepOptMmapEval_some_var_cexp_local_lookup v1 argexps args k ⟨hargs, hk⟩
        obtain ⟨m, hm1, hm2, _⟩ := hl.2.2.2 k w hw
        exact ⟨m, hm1, hm2⟩, hmem⟩).1
    omega
  let vals := args.map wlabWlocExact
  let sA : LoopSemStateFiniteExact width σ :=
    { st with locals := LoopSemStateFiniteExact.sptAlistInsert temps vals st.locals }
  have hget : LoopSemStateFiniteExact.getVars temps sA = some vals :=
    LoopSemStateFiniteExact.get_vars_local_update_some_eq temps vals st htnodup
      (by simp [vals, htlen, hlen])
  have hlab : findLabExact ctxt fname = loc := by simp [findLabExact, hfl]
  have hlenA : len = args.length := hnlen ▸ hnslen
  let nctxt := ctxtFcExact ctxt.target ctxt.funcs ns (List.range len)
  have hfind : LoopSemStateFiniteExact.findCode (some loc) vals sA.code =
      some (sptFromAList ((List.range len).zip vals),
        ocompileHOLExact nctxt (listToNumSetHOLExact (List.range len)) prog) := by
    simp only [LoopSemStateFiniteExact.findCode, sA]
    rw [hcl]
    simp [vals, hlenA, nctxt]
  -- the compiled arguments and assigns, from any clock extension
  have hpre : ∀ k (rest : List (HolLoopProg width)),
      LoopSemStateFiniteExact.evaluate
        (loopNestedSeqHOL (p ++ temps.zipWith HolLoopProg.assign les ++ rest))
        { t with clock := t.clock + (ck + k) } =
      LoopSemStateFiniteExact.evaluate (loopNestedSeqHOL rest)
        { sA with clock := sA.clock + k } := by
    intro k rest
    have h1k : LoopSemStateFiniteExact.evaluate (loopNestedSeqHOL p)
        { t with clock := t.clock + (ck + k) } = (none, { st with clock := st.clock + k }) := by
      have := LoopSemStateFiniteExact.evaluate_add_clock_eq _ _ _ _ k h1 (by simp)
      simpa [Nat.add_assoc] using this
    have hmapk : les.map (LoopSemStateFiniteExact.eval { st with clock := st.clock + k }) =
        vals.map some := by
      rw [← (optMmapEqSome les _ _).mp hles]
      congr 1; funext x; exact LoopSemStateFiniteExact.eval_upd_clock_eq _ _ _
    have hassign := LoopSemStateFiniteExact.loop_eval_nested_assign_distinct_eq les temps
      { st with clock := st.clock + k } vals ⟨hmapk, hdisj, htnodup, htlen⟩
    rw [List.append_assoc, LoopSemStateFiniteExact.evaluate_nested_seq_append_none p _ _ _ h1k,
      LoopSemStateFiniteExact.evaluate_nested_seq_append_none _ _ _ _ hassign]
  -- the callee's initial state, context and locals
  obtain ⟨hSc, hCc, hLc⟩ := crepToLoopCallPreserveStateCodeLocalsRelExact ns (List.range len)
    args v1 st ctxt nl fname argexps prog loc hnsnd List.nodup_range (by simp [hnlen])
    (by simp [hlenA]) h1s h1m h1g ⟨hdf, hcodeF⟩ h1l hcode (by simpa using hfl)
    ((optMmapEqSome argexps _ _).mp hargs)
  cases caltyp with
  | none =>
    simp only [if_false] at he
    have hcomp : compileHOLExact ctxt l (.call none fname argexps) =
        loopNestedSeqHOL (p ++ temps.zipWith HolLoopProg.assign les ++
          [HolLoopProg.call none (some loc) temps none]) := by
      rw [compileHOLExact, hC]; simp only [hlab]; rfl
    rw [hcomp]
    -- the target call from any clock extension
    have hcallK : ∀ k, LoopSemStateFiniteExact.evaluate
        (HolLoopProg.call none (some loc) temps none) { sA with clock := sA.clock + k } =
        if st.clock + k = 0 then
          (some .timeOut, { sA with clock := sA.clock + k, locals := .ln })
        else
          match LoopSemStateFiniteExact.evaluate
              (ocompileHOLExact nctxt (listToNumSetHOLExact (List.range len)) prog)
              { LoopSemStateFiniteExact.decClock { sA with clock := sA.clock + k } with
                  locals := sptFromAList ((List.range len).zip vals) } with
          | (none, s') => (some .error, s')
          | (some (.continue _), s') => (some .error, s')
          | (some (.break _), s') => (some .error, s')
          | (some res, s') => (some res, s') := by
      intro k
      have hgk : LoopSemStateFiniteExact.getVars temps { sA with clock := sA.clock + k } =
          some vals := by
        simp only [sA]
        rw [LoopSemStateFiniteExact.get_vars_local_clock_upd_eq]; exact hget
      rw [LoopSemStateFiniteExact.evaluate]
      simp only [hgk]
      rw [hfind]
      simp only [Option.isSome_none, Bool.false_eq_true, if_false]
      rfl
    by_cases hz : v1.clock = 0
    · simp only [hz, if_true, Prod.mk.injEq] at he
      obtain ⟨rfl, rfl⟩ := he
      have hst0 : st.clock = 0 := h1s.2.2.1 ▸ hz
      refine ⟨ck + 0, some .timeOut, { sA with clock := sA.clock + 0, locals := .ln }, ?_, h1s,
        h1m, h1g, ⟨hdf, hcodeF⟩, rfl, trivial,
          (by (try dsimp only [CrepSemHOLState.emptyLocals] at *); omega)⟩
      rw [hpre 0 _]
      simp only [loopNestedSeqHOL, LoopSemStateFiniteExact.evaluate_seq, hcallK 0, hst0,
        if_true]
    · simp only [hz, if_false] at he
      have hstz : st.clock ≠ 0 := h1s.2.2.1 ▸ hz
      have hw : (wlabWlocExact : HolWordLab width → WordLocW width) = wlabWlocHOL := by
        funext v; cases v; rfl
      let T0 : LoopSemStateFiniteExact width σ :=
        { st with locals := sptFromAList ((List.range len).zip (args.map wlabWlocHOL)),
                  clock := st.clock - 1 }
      -- a callee run ending in any result other than NONE/Break/Continue/Error
      have key : ∀ (r : CrepResultHOLExact width) (st' : CrepSemHOLState width σ),
          evalCrepSemHOLProgExact
              { decClockCrepSemHOL v1 with
                  locals := HolFiniteMapExact.empty.updateList (ns.zip args) } prog =
            (some r, st') →
          r ≠ .error → (∀ n, r ≠ .break n) → (∀ n, r ≠ .continue n) →
          ∃ (ck' : Nat) (t1 : LoopSemStateFiniteExact width σ),
            LoopSemStateFiniteExact.evaluate (HolLoopProg.call none (some loc) temps none)
                { sA with clock := sA.clock + ck' } = (resultToLoop (some r), t1) ∧
            crepToLoopStateRelExact st' t1 ∧
            crepToLoopMemRelHOLExact st'.memory t1.memory st'.memaddrs ∧
            crepToLoopGlobalsRelHOLExact st'.globals t1.globals ∧
            crepToLoopCodeRelExact ctxt st'.code t1.code ∧
            ck' + (S + 1) * st'.clock + 1 ≤ (S + 1) * v1.clock := by
        intro r st' hb hre hrb hrc
        obtain ⟨ck', res1', t1, h2, h2s, h2m, h2g, h2c, h2r, _, hb2⟩ :=
          ihb args prog _ ⟨hargs, hlc, by simp, hz⟩ hszp (CodeBoundedC.of_code rfl hcb) (some r) st' T0 nctxt
            (listToNumSetHOLExact (List.range len))
            hb (fun h => hre (Option.some.inj h)) hSc h1m h1g hCc hLc
        subst h2r
        have hkb : ck' + (S + 1) * st'.clock + 1 ≤ (S + 1) * v1.clock := by
          have hmp := mul_pred (S := S) hz
          simp only [decClockCrepSemHOL] at hb2
          omega
        have hopt := optimise_correct _ _ _ _ ⟨h2, by cases r <;> simp_all [resultToLoop],
          by intro n; cases r <;> simp_all [resultToLoop],
          by intro n; cases r <;> simp_all [resultToLoop],
          by cases r <;> simp [resultToLoop]⟩
        refine ⟨ck', t1, ?_, h2s, h2m, h2g, h2c, hkb⟩
        have hrec : ({ LoopSemStateFiniteExact.decClock { sA with clock := sA.clock + ck' } with
            locals := sptFromAList ((List.range len).zip vals) } : LoopSemStateFiniteExact width σ) =
            { T0 with clock := T0.clock + ck' } := by
          simp only [LoopSemStateFiniteExact.decClock, sA, T0, vals, hw]
          congr 1
          omega
        rw [hcallK ck', if_neg (by omega), hrec]
        simp only [ocompileHOLExact] at hopt ⊢
        rw [hopt]
        cases r with
        | «break» n => exact absurd rfl (hrb n)
        | «continue» n => exact absurd rfl (hrc n)
        | error => exact absurd rfl hre
        | _ => rfl
      split at he
      · simp only [Prod.mk.injEq] at he; exact absurd he.1.symm hne
      · simp only [Prod.mk.injEq] at he; exact absurd he.1.symm hne
      · simp only [Prod.mk.injEq] at he; exact absurd he.1.symm hne
      · rename_i _ retvs st' heq
        simp only [Prod.mk.injEq] at he
        obtain ⟨rfl, rfl⟩ := he
        obtain ⟨ck', t1, h3, h3s, h3m, h3g, h3c, hkb⟩ :=
          key (.return retvs) st' heq (by simp) (by simp) (by simp)
        refine ⟨ck + ck', resultToLoop (some (.return retvs)), t1, ?_, h3s, h3m, h3g, h3c, rfl, ?_,
          (by (try dsimp only [CrepSemHOLState.emptyLocals] at *); omega)⟩
        · rw [hpre ck' _]
          simp only [loopNestedSeqHOL, LoopSemStateFiniteExact.evaluate_seq, h3]
          rfl
        · trivial
      · rename_i _ eid st' heq
        simp only [Prod.mk.injEq] at he
        obtain ⟨rfl, rfl⟩ := he
        obtain ⟨ck', t1, h3, h3s, h3m, h3g, h3c, hkb⟩ :=
          key (.exception eid) st' heq (by simp) (by simp) (by simp)
        refine ⟨ck + ck', resultToLoop (some (.exception eid)), t1, ?_, h3s, h3m, h3g, h3c, rfl, ?_,
          (by (try dsimp only [CrepSemHOLState.emptyLocals] at *); omega)⟩
        · rw [hpre ck' _]
          simp only [loopNestedSeqHOL, LoopSemStateFiniteExact.evaluate_seq, h3]
          rfl
        · trivial
      · rename_i _ r' st' hn hb hcn hr hx heq
        simp only [Prod.mk.injEq] at he
        obtain ⟨rfl, rfl⟩ := he
        rcases r' with _ | r
        · exact absurd rfl hn
        have hre : r ≠ .error := fun h => hne (by rw [h])
        obtain ⟨ck', t1, h3, h3s, h3m, h3g, h3c, hkb⟩ :=
          key r st' heq hre (fun n h => hb n (by rw [h])) (fun n h => hcn n (by rw [h]))
        refine ⟨ck + ck', resultToLoop (some r), t1, ?_, h3s, h3m, h3g, h3c, rfl, ?_,
          (by (try dsimp only [CrepSemHOLState.emptyLocals] at *); omega)⟩
        · rw [hpre ck' _]
          simp only [loopNestedSeqHOL, LoopSemStateFiniteExact.evaluate_seq, h3]
          cases r <;> rfl
        · cases r <;> first | trivial | exact (hb _ rfl).elim | exact (hcn _ rfl).elim
  | some rh =>
    obtain ⟨rts, hdl⟩ := rh
    by_cases hnd : rts.Nodup
    · simp only [hnd, not_true_eq_false, if_false] at he
      let rn : List Nat := match rts.mapM ctxt.vars.lookup with
        | none => [ctxt.vmax + 2]
        | some names => names
      let hbody : HolLoopProg width := match hdl with
        | none => .raise (ctxt.vmax + 1)
        | some (exception, hp) =>
            .ite .notEqual (ctxt.vmax + 1) (.imm exception)
              (.raise (ctxt.vmax + 1)) (.seq .tick (compileHOLExact ctxt l hp)) l
      have hcomp : compileHOLExact ctxt l (.call (some (rts, hdl)) fname argexps) =
          loopNestedSeqHOL (p ++ temps.zipWith HolLoopProg.assign les ++
            [HolLoopProg.call (some (rn, l)) (some loc) temps
              (some (ctxt.vmax + 1, hbody, .skip, l))]) := by
        rw [compileHOLExact, hC]; simp only [hlab]; cases hdl <;> rfl
      rw [hcomp]
      have hrnnd : rn.Nodup := by
        have h := allDistinctCtxtLookupAllDistinctExact ctxt rts (ctxt.vmax + 1) hnd hl.1
        simp only [rtVars, FLOOKUP] at h
        simp only [rn]
        cases hm : rts.mapM ctxt.vars.lookup with
        | none => simp
        | some names =>
          have hm' : rts.mapM (fun v => ctxt.vars.lookup v) = some names := hm
          rw [hm'] at h; exact h
      have hsubA : LoopSemStateFiniteExact.sptSubsetLive l sA.locals := by
        intro k hk
        have hkst : sptMem k st.locals := h1l.2.2.1 k (hlA ▸ cut_sets_union_domain_subset _ l hokA k hk)
        show (sptLookup k (LoopSemStateFiniteExact.sptAlistInsert temps vals st.locals)).isSome
        rw [lookup_alist_insert_any]
        split
        · exact hkst
        · rfl
      have hgk : ∀ k, LoopSemStateFiniteExact.getVars temps { sA with clock := sA.clock + k } =
          some vals := by
        intro k
        simp only [sA]
        rw [LoopSemStateFiniteExact.get_vars_local_clock_upd_eq]; exact hget
      by_cases hz : v1.clock = 0
      · simp only [hz, if_true, Prod.mk.injEq] at he
        obtain ⟨rfl, rfl⟩ := he
        have hst0 : st.clock = 0 := h1s.2.2.1 ▸ hz
        refine ⟨ck + 0, some .timeOut, { sA with clock := sA.clock + 0, locals := .ln }, ?_, h1s,
          h1m, h1g, ⟨hdf, hcodeF⟩, rfl, trivial,
          (by (try dsimp only [CrepSemHOLState.emptyLocals] at *); omega)⟩
        rw [hpre 0 _]
        simp only [loopNestedSeqHOL, LoopSemStateFiniteExact.evaluate_seq]
        rw [LoopSemStateFiniteExact.evaluate]
        simp only [hgk 0]
        rw [hfind]
        simp only [hrnnd, not_true_eq_false, if_false]
        have hc0 : LoopSemStateFiniteExact.cutRes l (none, { sA with clock := sA.clock + 0 }) =
            (some .timeOut, { sA with clock := sA.clock + 0, locals := .ln }) := by
          rw [LoopSemStateFiniteExact.cutRes]
          simp only
          rw [LoopSemStateFiniteExact.cutState_of_subset l { sA with clock := sA.clock + 0 } hsubA]
          simp [hst0, sA]
        rw [hc0]
      · simp only [hz, if_false] at he
        have hstz : st.clock ≠ 0 := h1s.2.2.1 ▸ hz
        have hw : (wlabWlocExact : HolWordLab width → WordLocW width) = wlabWlocHOL := by
          funext v; cases v; rfl
        let T0 : LoopSemStateFiniteExact width σ :=
          { st with locals := sptFromAList ((List.range len).zip (args.map wlabWlocHOL)),
                    clock := st.clock - 1 }
        -- `locals_rel ctxt l` at the call site (the argument temporaries are above vmax)
        have hA : crepToLoopLocalsRelExact ctxt l v1.locals sA.locals := by
          refine ⟨hl.1, hl.2.1, hsubA, fun vn val hval => ?_⟩
          obtain ⟨n, hn1, hn2, _⟩ := hl.2.2.2 vn val hval
          obtain ⟨n', hn1', _, hn3'⟩ := h1l.2.2.2 vn val hval
          have hnn : n' = n := Option.some.inj (hn1'.symm.trans hn1)
          subst hnn
          have hle := h1l.2.1 vn n' hn1'
          have hnt : n' ∉ temps := by
            simp only [temps, genTemps, List.mem_map, List.mem_range, not_exists, not_and]
            intro a _ h; omega
          refine ⟨n', hn1', hn2, ?_⟩
          show sptLookup n' (LoopSemStateFiniteExact.sptAlistInsert temps vals st.locals) = _
          rw [lookup_alist_insert_any, holAlookup_zip_not_mem' temps vals n' hnt]
          exact hn3'
        have hcutK : ∀ k, LoopSemStateFiniteExact.cutRes l (none, { sA with clock := sA.clock + k }) =
            (none, { sA with locals := sptInter sA.locals l, clock := st.clock + k - 1 }) := by
          intro k
          rw [LoopSemStateFiniteExact.cutRes]
          simp only
          rw [LoopSemStateFiniteExact.cutState_of_subset l { sA with clock := sA.clock + k } hsubA]
          simp only [LoopSemStateFiniteExact.decClock, sA,
            show ¬ st.clock + k = 0 by omega, if_false]
        have hrecK : ∀ k, ({ ({ sA with locals := sptInter sA.locals l, clock := st.clock + k - 1 } :
              LoopSemStateFiniteExact width σ) with locals := sptFromAList ((List.range len).zip vals) } :
              LoopSemStateFiniteExact width σ) = { T0 with clock := T0.clock + k } := by
          intro k
          simp only [sA, T0, vals, hw]
          congr 1
          omega
        have keyR : ∀ (r : CrepResultHOLExact width) (st' : CrepSemHOLState width σ),
            evalCrepSemHOLProgExact
                { decClockCrepSemHOL v1 with
                    locals := HolFiniteMapExact.empty.updateList (ns.zip args) } prog =
              (some r, st') →
            r ≠ .error → (∀ n, r ≠ .break n) → (∀ n, r ≠ .continue n) →
            ∃ (ck' : Nat) (t1 : LoopSemStateFiniteExact width σ),
              LoopSemStateFiniteExact.evaluate
                  (ocompileHOLExact nctxt (listToNumSetHOLExact (List.range len)) prog)
                  { T0 with clock := T0.clock + ck' } = (resultToLoop (some r), t1) ∧
              crepToLoopStateRelExact st' t1 ∧
              crepToLoopMemRelHOLExact st'.memory t1.memory st'.memaddrs ∧
              crepToLoopGlobalsRelHOLExact st'.globals t1.globals ∧
              crepToLoopCodeRelExact ctxt st'.code t1.code ∧
              ck' + (S + 1) * st'.clock + 1 ≤ (S + 1) * v1.clock := by
          intro r st' hb hre hrb hrc
          obtain ⟨ck', res1', t1, h2, h2s, h2m, h2g, h2c, h2r, _, hb2⟩ :=
            ihb args prog _ ⟨hargs, hlc, by simpa using hnd, hz⟩ hszp (CodeBoundedC.of_code rfl hcb) (some r) st' T0 nctxt
              (listToNumSetHOLExact (List.range len))
              hb (fun h => hre (Option.some.inj h)) hSc h1m h1g hCc hLc
          subst h2r
          have hkb : ck' + (S + 1) * st'.clock + 1 ≤ (S + 1) * v1.clock := by
            have hmp := mul_pred (S := S) hz
            simp only [decClockCrepSemHOL] at hb2
            omega
          have hopt := optimise_correct _ _ _ _ ⟨h2,
            by cases r <;> simp_all [resultToLoop],
            by intro n; cases r <;> simp_all [resultToLoop],
            by intro n; cases r <;> simp_all [resultToLoop],
            by cases r <;> simp [resultToLoop]⟩
          exact ⟨ck', t1, hopt, h2s, h2m, h2g, h2c, hkb⟩
        split at he
        · simp only [Prod.mk.injEq] at he; exact absurd he.1.symm hne
        · simp only [Prod.mk.injEq] at he; exact absurd he.1.symm hne
        · simp only [Prod.mk.injEq] at he; exact absurd he.1.symm hne
        · rename_i _ retvs st' heq
          by_cases hlr : retvs.length = rts.length
          · simp only [hlr, ne_eq, not_true_eq_false, if_false] at he
            cases hml : rts.mapM v1.locals.lookup with
            | none => simp only [hml, Prod.mk.injEq] at he; exact absurd he.1.symm hne
            | some ws =>
            simp only [hml, Prod.mk.injEq] at he
            obtain ⟨rfl, rfl⟩ := he
            obtain ⟨nrhss, hnm, hnlen, hnl, _⟩ :=
              crepToLoop_opt_mmap_rhss_locals_rel rts ws v1 t ctxt l ⟨hml, hl⟩
            have hrn : rn = nrhss := by simp [rn, hnm]
            obtain ⟨ck', t1, hrun, h2s, h2m, h2g, h2c, hkb⟩ :=
              keyR (.return retvs) st' heq (by simp) (by simp) (by simp)
            have hrun1 : LoopSemStateFiniteExact.evaluate
                (ocompileHOLExact nctxt (listToNumSetHOLExact (List.range len)) prog)
                { T0 with clock := T0.clock + (ck' + 1) } =
                (some (.result (retvs.map wlabWlocExact)), { t1 with clock := t1.clock + 1 }) := by
              have := LoopSemStateFiniteExact.evaluate_add_clock_eq _ _ _ _ 1 hrun (by simp [resultToLoop])
              simpa [Nat.add_assoc, resultToLoop] using this
            let X : LoopSemStateFiniteExact width σ :=
              LoopSemStateFiniteExact.setVars rn (retvs.map wlabWlocExact)
                { t1 with clock := t1.clock + 1, locals := sptInter sA.locals l }
            have hXsub : LoopSemStateFiniteExact.sptSubsetLive l X.locals := by
              intro k hk
              have hk' : (sptLookup k l).isSome := hk
              show (sptLookup k (LoopSemStateFiniteExact.sptAlistInsert rn _ _)).isSome
              rw [lookup_alist_insert_any]
              split
              · show (sptLookup k (sptInter sA.locals l)).isSome
                rw [sptLookup_sptInter, if_pos hk']; exact hsubA k hk
              · rfl
            have hXcut : LoopSemStateFiniteExact.cutRes l (none, X) =
                (none, { t1 with locals := sptInter X.locals l }) := by
              rw [LoopSemStateFiniteExact.cutRes]
              simp only
              rw [LoopSemStateFiniteExact.cutState_of_subset l X hXsub]
              simp [LoopSemStateFiniteExact.decClock, X, LoopSemStateFiniteExact.setVars]
            refine ⟨ck + (ck' + 1), none, { t1 with locals := sptInter X.locals l }, ?_, h2s, h2m,
              h2g, h2c, rfl, ?_,
          (by (try dsimp only [CrepSemHOLState.emptyLocals] at *); omega)⟩
            · rw [hpre (ck' + 1) _]
              simp only [loopNestedSeqHOL, LoopSemStateFiniteExact.evaluate_seq]
              rw [LoopSemStateFiniteExact.evaluate]
              simp only [hgk (ck' + 1)]
              rw [hfind]
              simp only [hrnnd, not_true_eq_false, if_false]
              rw [hcutK (ck' + 1)]
              simp only
              rw [LoopSemStateFiniteExact.fix_clock_evaluate, hrecK (ck' + 1), hrun1]
              have hlen2 : (retvs.map wlabWlocExact).length = rn.length := by
                simp [hrn, hnlen, hlr]
              simp only [hlen2, ne_eq, not_true_eq_false, if_false]
              simp only [LoopSemStateFiniteExact.evaluate]
              have hXc := hXcut
              simp only [X] at hXc
              rw [hXc]
            · have := locals_rel_after_return ctxt l v1.locals sA.locals rts rn retvs hA
                (hrn ▸ hnm) (hrn ▸ hnl) hnd hrnnd hlr
              simpa [X, LoopSemStateFiniteExact.setVars, localsResultRel] using this
          · simp only [hlr, ne_eq, not_false_eq_true, if_true, Prod.mk.injEq] at he
            exact absurd he.1.symm hne
        · rename_i _ eid st' heq
          obtain ⟨ck', t1, hrun, h2s, h2m, h2g, h2c, hkb⟩ :=
            keyR (.exception eid) st' heq (by simp) (by simp) (by simp)
          cases hdl with
          | none =>
            simp only [Prod.mk.injEq] at he
            obtain ⟨rfl, rfl⟩ := he
            refine ⟨ck + ck', some (.exception (.word eid)), LoopSemStateFiniteExact.callEnv []
              (LoopSemStateFiniteExact.setVar (ctxt.vmax + 1) (.word eid)
                { t1 with locals := sptInter sA.locals l }), ?_, h2s, h2m, h2g, h2c, rfl, trivial,
          (by (try dsimp only [CrepSemHOLState.emptyLocals] at *); omega)⟩
            rw [hpre (ck') _]
            simp only [loopNestedSeqHOL, LoopSemStateFiniteExact.evaluate_seq]
            rw [LoopSemStateFiniteExact.evaluate]
            simp only [hgk (ck')]
            rw [hfind]
            simp only [hrnnd, not_true_eq_false, if_false]
            rw [hcutK (ck')]
            simp only
            rw [LoopSemStateFiniteExact.fix_clock_evaluate, hrecK (ck'), hrun]
            simp only [resultToLoop, hbody, LoopSemStateFiniteExact.evaluate,
              LoopSemStateFiniteExact.setVar, sptLookup_sptInsert, if_true]
            rfl
          | some hq =>
            obtain ⟨eid', hp⟩ := hq
            have hszh : csize hp ≤ S := by simp only [csize] at hsz; omega
            have hch : csize (CrepProgHOL.call (some (rts, some (eid', hp))) fname argexps) =
                esizeL argexps + csize hp + 3 := by simp [csize]
            by_cases hee : eid = eid'
            · subst hee
              simp only [if_true] at he
              let Z : LoopSemStateFiniteExact width σ :=
                { t1 with locals := sptInsert (ctxt.vmax + 1) (.word eid) (sptInter sA.locals l) }
              have hZl : crepToLoopLocalsRelExact ctxt l v1.locals Z.locals :=
                crepToLoopLocalsRelExact_insert_gt_vmax ctxt l v1.locals _ (ctxt.vmax + 1) _
                  (locals_rel_inter ctxt l v1.locals sA.locals hA) (Nat.lt_succ_self _)
              have hcst : st'.code = v1.code := (evaluateCodeInvariantHOL _ _ _ _ heq).trans rfl
              obtain ⟨ck'', res1, t2, h3, h3s, h3m, h3g, h3c, h3r, h3l, hb3⟩ :=
                ihh args prog _ st' eid rts hp ⟨hargs, hlc, by simpa using hnd, hz, heq, rfl⟩
                  hszh (CodeBoundedC.of_code hcst hcb)
                  res s1 Z ctxt l he hne h2s h2m h2g h2c hZl
              -- the handler body from a clock extension `J ≥ 1`
              have hbodyJ : ∀ J, 1 ≤ J → LoopSemStateFiniteExact.evaluate hbody
                  (LoopSemStateFiniteExact.setVar (ctxt.vmax + 1) (.word eid)
                    { t1 with clock := t1.clock + J, locals := sptInter sA.locals l }) =
                  LoopSemStateFiniteExact.cutRes l
                    (LoopSemStateFiniteExact.evaluate (compileHOLExact ctxt l hp)
                      { Z with clock := Z.clock + (J - 1) }) := by
                intro J hJ
                simp only [hbody]
                rw [LoopSemStateFiniteExact.evaluate]
                simp only [LoopSemStateFiniteExact.setVar, sptLookup_sptInsert, if_true,
                  LoopSemStateFiniteExact.getVarImm, Compiler.Encoders.Asm.wordCmpHOL,
                  beq_self_eq_true, Bool.not_true, Bool.false_eq_true, if_false]
                rw [LoopSemStateFiniteExact.evaluate_seq]
                rw [LoopSemStateFiniteExact.evaluate]
                simp only [show ¬ t1.clock + J = 0 by omega, if_false]
                congr 3
                simp only [LoopSemStateFiniteExact.decClock, Z]
                congr 1
                omega
              cases res with
              | none =>
                have hr1 : res1 = none := by simpa [resultToLoop] using h3r
                subst hr1
                have h3l' : crepToLoopLocalsRelExact ctxt l s1.locals t2.locals := h3l
                have hrunK : LoopSemStateFiniteExact.evaluate
                    (ocompileHOLExact nctxt (listToNumSetHOLExact (List.range len)) prog)
                    { T0 with clock := T0.clock + (ck' + (ck'' + 3)) } =
                    (some (.exception (.word eid)), { t1 with clock := t1.clock + (ck'' + 3) }) := by
                  have := LoopSemStateFiniteExact.evaluate_add_clock_eq _ _ _ _ (ck'' + 3) hrun
                    (by simp [resultToLoop])
                  simpa [Nat.add_assoc, resultToLoop] using this
                have h3k : LoopSemStateFiniteExact.evaluate (compileHOLExact ctxt l hp)
                    { Z with clock := Z.clock + (ck'' + 3 - 1) } =
                    (none, { t2 with clock := t2.clock + 2 }) := by
                  have := LoopSemStateFiniteExact.evaluate_add_clock_eq _ _ _ _ 2 h3 (by simp)
                  simpa [Nat.add_assoc] using this
                have hsub2 : LoopSemStateFiniteExact.sptSubsetLive l t2.locals := h3l'.2.2.1
                have hc1 : LoopSemStateFiniteExact.cutRes l (none, { t2 with clock := t2.clock + 2 }) =
                    (none, { t2 with locals := sptInter t2.locals l, clock := t2.clock + 1 }) := by
                  rw [LoopSemStateFiniteExact.cutRes]
                  simp only
                  rw [LoopSemStateFiniteExact.cutState_of_subset l { t2 with clock := t2.clock + 2 } hsub2]
                  simp [LoopSemStateFiniteExact.decClock]
                have hsub3 : LoopSemStateFiniteExact.sptSubsetLive l (sptInter t2.locals l) :=
                  (locals_rel_inter ctxt l s1.locals t2.locals h3l').2.2.1
                have hc2 : LoopSemStateFiniteExact.cutRes l
                    (none, { t2 with locals := sptInter t2.locals l, clock := t2.clock + 1 }) =
                    (none, { t2 with locals := sptInter (sptInter t2.locals l) l }) := by
                  rw [LoopSemStateFiniteExact.cutRes]
                  simp only
                  rw [LoopSemStateFiniteExact.cutState_of_subset l
                    { t2 with locals := sptInter t2.locals l, clock := t2.clock + 1 } hsub3]
                  simp [LoopSemStateFiniteExact.decClock]
                refine ⟨ck + (ck' + (ck'' + 3)), none,
                  { t2 with locals := sptInter (sptInter t2.locals l) l }, ?_, h3s, h3m, h3g, h3c,
                  rfl, locals_rel_inter ctxt l _ _ (locals_rel_inter ctxt l _ _ h3l'),
                  (by (try dsimp only [CrepSemHOLState.emptyLocals] at *); omega)⟩
                rw [hpre (ck' + (ck'' + 3)) _]
                simp only [loopNestedSeqHOL, LoopSemStateFiniteExact.evaluate_seq]
                rw [LoopSemStateFiniteExact.evaluate]
                simp only [hgk (ck' + (ck'' + 3))]
                rw [hfind]
                simp only [hrnnd, not_true_eq_false, if_false]
                rw [hcutK (ck' + (ck'' + 3))]
                simp only
                rw [LoopSemStateFiniteExact.fix_clock_evaluate, hrecK (ck' + (ck'' + 3)), hrunK]
                simp only
                rw [hbodyJ (ck'' + 3) (by omega), h3k, hc1, hc2]
                simp only [LoopSemStateFiniteExact.evaluate]
              | some r =>
                obtain ⟨x, hx⟩ : ∃ x, res1 = some x := by
                  cases r <;> simp only [resultToLoop] at h3r <;> exact ⟨_, h3r⟩
                have hrunK : LoopSemStateFiniteExact.evaluate
                    (ocompileHOLExact nctxt (listToNumSetHOLExact (List.range len)) prog)
                    { T0 with clock := T0.clock + (ck' + (ck'' + 1)) } =
                    (some (.exception (.word eid)), { t1 with clock := t1.clock + (ck'' + 1) }) := by
                  have := LoopSemStateFiniteExact.evaluate_add_clock_eq _ _ _ _ (ck'' + 1) hrun
                    (by simp [resultToLoop])
                  simpa [Nat.add_assoc, resultToLoop] using this
                have h3k : LoopSemStateFiniteExact.evaluate (compileHOLExact ctxt l hp)
                    { Z with clock := Z.clock + (ck'' + 1 - 1) } = (res1, t2) := by
                  simpa using h3
                refine ⟨ck + (ck' + (ck'' + 1)), res1, t2, ?_, h3s, h3m, h3g, h3c, h3r, h3l,
                  (by (try dsimp only [CrepSemHOLState.emptyLocals] at *); omega)⟩
                rw [hpre (ck' + (ck'' + 1)) _]
                simp only [loopNestedSeqHOL, LoopSemStateFiniteExact.evaluate_seq]
                rw [LoopSemStateFiniteExact.evaluate]
                simp only [hgk (ck' + (ck'' + 1))]
                rw [hfind]
                simp only [hrnnd, not_true_eq_false, if_false]
                rw [hcutK (ck' + (ck'' + 1))]
                simp only
                rw [LoopSemStateFiniteExact.fix_clock_evaluate, hrecK (ck' + (ck'' + 1)), hrunK]
                simp only
                rw [hbodyJ (ck'' + 1) (by omega), h3k, hx]
                rfl
            · simp only [hee, if_false, Prod.mk.injEq] at he
              obtain ⟨rfl, rfl⟩ := he
              refine ⟨ck + ck', some (.exception (.word eid)), LoopSemStateFiniteExact.callEnv []
                (LoopSemStateFiniteExact.setVar (ctxt.vmax + 1) (.word eid)
                  { t1 with locals := sptInter sA.locals l }), ?_, h2s, h2m, h2g, h2c, rfl, trivial,
          (by (try dsimp only [CrepSemHOLState.emptyLocals] at *); omega)⟩
              rw [hpre (ck') _]
              simp only [loopNestedSeqHOL, LoopSemStateFiniteExact.evaluate_seq]
              rw [LoopSemStateFiniteExact.evaluate]
              simp only [hgk (ck')]
              rw [hfind]
              simp only [hrnnd, not_true_eq_false, if_false]
              rw [hcutK (ck')]
              simp only
              rw [LoopSemStateFiniteExact.fix_clock_evaluate, hrecK (ck'), hrun]
              have hb : (eid == eid') = false := beq_eq_false_iff_ne.mpr hee
              simp only [resultToLoop, hbody, LoopSemStateFiniteExact.evaluate,
                LoopSemStateFiniteExact.setVar, sptLookup_sptInsert, if_true,
                LoopSemStateFiniteExact.getVarImm, Compiler.Encoders.Asm.wordCmpHOL, hb,
                Bool.not_false]
              rfl
        · rename_i _ r' st' hn hb hcn hr hx heq
          simp only [Prod.mk.injEq] at he
          obtain ⟨rfl, rfl⟩ := he
          rcases r' with _ | r
          · exact absurd rfl hn
          have hre : r ≠ .error := fun h => hne (by rw [h])
          obtain ⟨ck', t1, hrun, h2s, h2m, h2g, h2c, hkb⟩ :=
            keyR r st' heq hre (fun n h => hb n (by rw [h])) (fun n h => hcn n (by rw [h]))
          refine ⟨ck + ck', resultToLoop (some r), t1, ?_, h2s, h2m, h2g, h2c, rfl, ?_,
          (by (try dsimp only [CrepSemHOLState.emptyLocals] at *); omega)⟩
          · rw [hpre ck' _]
            simp only [loopNestedSeqHOL, LoopSemStateFiniteExact.evaluate_seq]
            rw [LoopSemStateFiniteExact.evaluate]
            simp only [hgk ck']
            rw [hfind]
            simp only [hrnnd, not_true_eq_false, if_false]
            rw [hcutK ck']
            simp only
            rw [LoopSemStateFiniteExact.fix_clock_evaluate, hrecK ck', hrun]
            cases r with
            | «return» v => exact absurd rfl (hr v)
            | exception v => exact absurd rfl (hx v)
            | «break» n => exact absurd rfl (hb n)
            | «continue» n => exact absurd rfl (hcn n)
            | error => exact absurd rfl hre
            | _ => rfl
          · cases r <;> first | trivial | exact (hb _ rfl).elim | exact (hcn _ rfl).elim
    · simp only [hnd, not_false_eq_true, if_true, Prod.mk.injEq] at he
      exact absurd he.1.symm hne

end InitECandidate.Solver.Compiler.CrepToLoop
