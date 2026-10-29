import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data577
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate557
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody577_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "charge_state_gas" [Flapjack.Exp.const 183600#64]

def globalBody577_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody577_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "e") (Flapjack.Exp.const 0#64)) globalBody577_0 globalBody577_1

def globalBody577_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody577_4 : Prog (BitVec 64) :=
.seq globalBody577_2 globalBody577_3

def globalBody577_5 : Prog (BitVec 64) :=
.decCall ("e") (Flapjack.Shape.one) ("acct_is_empty") ([Flapjack.Exp.var Flapjack.VarKind.local "pre"]) globalBody577_4

def globalBody577_6 : Prog (BitVec 64) :=
.decCall ("pre") (Flapjack.Shape.one) ("get_pre_state_account") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "msg", Flapjack.Exp.const 32#64])]) globalBody577_5

def globalBody577_7 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "msg", Flapjack.Exp.const 24#64]))
  (Flapjack.Exp.const 0#64)) globalBody577_6 globalBody577_1

def globalBody577_8 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "alive") (Flapjack.Exp.const 0#64)) globalBody577_0 globalBody577_1

def globalBody577_9 : Prog (BitVec 64) :=
.decCall ("alive") (Flapjack.Shape.one) ("is_account_alive") ([Flapjack.Exp.var Flapjack.VarKind.local "recipient"]) globalBody577_8

def globalBody577_10 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "vz") (Flapjack.Exp.const 0#64)) globalBody577_9 globalBody577_1

def globalBody577_11 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.var Flapjack.VarKind.local "daddr", Flapjack.Exp.var Flapjack.VarKind.local "da",
    Flapjack.Exp.const 20#64]

def globalBody577_12 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "charge_gas" [Flapjack.Exp.const 100#64]

def globalBody577_13 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "charge_gas" [Flapjack.Exp.const 3000#64]

def globalBody577_14 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "warm_address" [Flapjack.Exp.var Flapjack.VarKind.local "daddr"]

def globalBody577_15 : Prog (BitVec 64) :=
.seq globalBody577_13 globalBody577_14

def globalBody577_16 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "warm") (Flapjack.Exp.const 0#64)) globalBody577_12 globalBody577_15

def globalBody577_17 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "code"
  (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "dcode"))

def globalBody577_18 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "code_n"
  (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "dcode"))

def globalBody577_19 : Prog (BitVec 64) :=
.seq globalBody577_17 globalBody577_18

def globalBody577_20 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "msg", Flapjack.Exp.const 168#64])
  (Flapjack.Exp.const 1#64)

def globalBody577_21 : Prog (BitVec 64) :=
.seq globalBody577_19 globalBody577_20

def globalBody577_22 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "msg", Flapjack.Exp.const 104#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "daddr")

def globalBody577_23 : Prog (BitVec 64) :=
.seq globalBody577_21 globalBody577_22

def globalBody577_24 : Prog (BitVec 64) :=
.decCall ("dcode") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("ext_code_of") ([Flapjack.Exp.var Flapjack.VarKind.local "daddr"]) globalBody577_23

def globalBody577_25 : Prog (BitVec 64) :=
.seq globalBody577_16 globalBody577_24

def globalBody577_26 : Prog (BitVec 64) :=
.decCall ("warm") (Flapjack.Shape.one) ("is_warm_address") ([Flapjack.Exp.var Flapjack.VarKind.local "daddr"]) globalBody577_25

def globalBody577_27 : Prog (BitVec 64) :=
.seq globalBody577_11 globalBody577_26

def globalBody577_28 : Prog (BitVec 64) :=
.decCall ("daddr") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 24#64]) globalBody577_27

def globalBody577_29 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "da") (Flapjack.Exp.const 0#64)) globalBody577_28 globalBody577_1

def globalBody577_30 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "msg", Flapjack.Exp.const 112#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "code")

def globalBody577_31 : Prog (BitVec 64) :=
.seq globalBody577_29 globalBody577_30

def globalBody577_32 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "msg", Flapjack.Exp.const 120#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "code_n")

def globalBody577_33 : Prog (BitVec 64) :=
.seq globalBody577_31 globalBody577_32

def globalBody577_34 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 256#64]),
      Flapjack.Exp.const 48#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "code")

def globalBody577_35 : Prog (BitVec 64) :=
.seq globalBody577_33 globalBody577_34

def globalBody577_36 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 256#64]),
      Flapjack.Exp.const 56#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "code_n")

def globalBody577_37 : Prog (BitVec 64) :=
.seq globalBody577_35 globalBody577_36

def globalBody577_38 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 256#64]),
      Flapjack.Exp.const 80#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "jd")

def globalBody577_39 : Prog (BitVec 64) :=
.seq globalBody577_38 globalBody577_3

def globalBody577_40 : Prog (BitVec 64) :=
.decCall ("jd") (Flapjack.Shape.one) ("compute_jumpdests") ([Flapjack.Exp.var Flapjack.VarKind.local "code", Flapjack.Exp.var Flapjack.VarKind.local "code_n"]) globalBody577_39

def globalBody577_41 : Prog (BitVec 64) :=
.seq globalBody577_37 globalBody577_40

def globalBody577_42 : Prog (BitVec 64) :=
.decCall ("da") (Flapjack.Shape.one) ("get_delegated_code_address") ([Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "rcode"),
  Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "rcode")]) globalBody577_41

def globalBody577_43 : Prog (BitVec 64) :=
.dec ("code_n") (Flapjack.Shape.one) (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "rcode")) globalBody577_42

def globalBody577_44 : Prog (BitVec 64) :=
.dec ("code") (Flapjack.Shape.one) (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "rcode")) globalBody577_43

def globalBody577_45 : Prog (BitVec 64) :=
.decCall ("rcode") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("ext_code_of") ([Flapjack.Exp.var Flapjack.VarKind.local "recipient"]) globalBody577_44

def globalBody577_46 : Prog (BitVec 64) :=
.seq globalBody577_10 globalBody577_45

def globalBody577_47 : Prog (BitVec 64) :=
.decCall ("vz") (Flapjack.Shape.one) ("u256_is_zero") ([Flapjack.Exp.load
    (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "msg", Flapjack.Exp.const 56#64])]) globalBody577_46

def globalBody577_48 : Prog (BitVec 64) :=
.dec ("recipient") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "msg", Flapjack.Exp.const 32#64])) globalBody577_47

def globalBody577_49 : Prog (BitVec 64) :=
.seq globalBody577_7 globalBody577_48

def globalBody577_50 : Prog (BitVec 64) :=
.dec ("msg") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 256#64]),
      Flapjack.Exp.const 112#64])) globalBody577_49

def globalData577 : Decl (BitVec 64) :=
.function { name := "prepare_dispatch", inline := false, exported := false, params := [], body := globalBody577_50, returnShape := (Flapjack.Shape.one) }
def globalOutput577 := Pancake.PanLang.declToHOL globalData577
end InitECandidate.Proofs.FrontendStages.Declarations
