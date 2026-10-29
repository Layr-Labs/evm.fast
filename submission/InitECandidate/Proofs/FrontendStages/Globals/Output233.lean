import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data233
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate215
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody233_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "acc"), none)) "u256_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "acc", Flapjack.Exp.var Flapjack.VarKind.local "den"]

def globalBody233_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "out"), none)) "u256_add"
  [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.var Flapjack.VarKind.local "acc"]

def globalBody233_2 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "trap_with" [Flapjack.Exp.const 3#64]

def globalBody233_3 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody233_4 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual
  (Flapjack.Exp.op Flapjack.BinOp.or
    [Flapjack.Exp.rField 4 (Flapjack.Exp.var Flapjack.VarKind.local "prod"),
      Flapjack.Exp.rField 5 (Flapjack.Exp.var Flapjack.VarKind.local "prod"),
      Flapjack.Exp.rField 6 (Flapjack.Exp.var Flapjack.VarKind.local "prod"),
      Flapjack.Exp.rField 7 (Flapjack.Exp.var Flapjack.VarKind.local "prod")])
  (Flapjack.Exp.const 0#64)) globalBody233_2 globalBody233_3

def globalBody233_5 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "di"), none)) "u256_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "di", Flapjack.Exp.var Flapjack.VarKind.local "den"]

def globalBody233_6 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "acc"), none)) "u256_div"
  [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.var Flapjack.VarKind.local "di"]

def globalBody233_7 : Prog (BitVec 64) :=
.seq globalBody233_5 globalBody233_6

def globalBody233_8 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64])

def globalBody233_9 : Prog (BitVec 64) :=
.seq globalBody233_7 globalBody233_8

def globalBody233_10 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "nz"), none)) "u256_is_zero"
  [Flapjack.Exp.var Flapjack.VarKind.local "acc"]

def globalBody233_11 : Prog (BitVec 64) :=
.seq globalBody233_9 globalBody233_10

def globalBody233_12 : Prog (BitVec 64) :=
.decCall ("di") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_from_word") ([Flapjack.Exp.var Flapjack.VarKind.local "i"]) globalBody233_11

def globalBody233_13 : Prog (BitVec 64) :=
.dec ("p") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.rStruct
  [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "prod"),
    Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "prod"),
    Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "prod"),
    Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "prod")]) globalBody233_12

def globalBody233_14 : Prog (BitVec 64) :=
.seq globalBody233_4 globalBody233_13

def globalBody233_15 : Prog (BitVec 64) :=
.decCall ("prod") (Flapjack.Shape.comb
  [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
    Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_mul_full") ([Flapjack.Exp.var Flapjack.VarKind.local "acc", Flapjack.Exp.var Flapjack.VarKind.local "num"]) globalBody233_14

def globalBody233_16 : Prog (BitVec 64) :=
.seq globalBody233_1 globalBody233_15

def globalBody233_17 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "nz") (Flapjack.Exp.const 0#64)) globalBody233_16

def globalBody233_18 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "out"), none)) "u256_div"
  [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.var Flapjack.VarKind.local "den"]

def globalBody233_19 : Prog (BitVec 64) :=
.seq globalBody233_17 globalBody233_18

def globalBody233_20 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "out")

def globalBody233_21 : Prog (BitVec 64) :=
.seq globalBody233_19 globalBody233_20

def globalBody233_22 : Prog (BitVec 64) :=
.decCall ("nz") (Flapjack.Shape.one) ("u256_is_zero") ([Flapjack.Exp.var Flapjack.VarKind.local "acc"]) globalBody233_21

def globalBody233_23 : Prog (BitVec 64) :=
.dec ("zero") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.rStruct
  [Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64]) globalBody233_22

def globalBody233_24 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 1#64) globalBody233_23

def globalBody233_25 : Prog (BitVec 64) :=
.dec ("out") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.rStruct
  [Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64]) globalBody233_24

def globalBody233_26 : Prog (BitVec 64) :=
.seq globalBody233_0 globalBody233_25

def globalBody233_27 : Prog (BitVec 64) :=
.decCall ("acc") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_from_word") ([Flapjack.Exp.var Flapjack.VarKind.local "factor"]) globalBody233_26

def globalBody233_28 : Prog (BitVec 64) :=
.decCall ("num") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_from_word") ([Flapjack.Exp.var Flapjack.VarKind.local "numerator"]) globalBody233_27

def globalBody233_29 : Prog (BitVec 64) :=
.decCall ("den") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_from_word") ([Flapjack.Exp.var Flapjack.VarKind.local "denominator"]) globalBody233_28

def globalData233 : Decl (BitVec 64) :=
.function { name := "taylor_exponential", inline := false, exported := false, params := [("factor", Flapjack.Shape.one), ("numerator", Flapjack.Shape.one), ("denominator", Flapjack.Shape.one)], body := globalBody233_29, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) }
def globalOutput233 := Pancake.PanLang.declToHOL globalData233
end InitECandidate.Proofs.FrontendStages.Declarations
