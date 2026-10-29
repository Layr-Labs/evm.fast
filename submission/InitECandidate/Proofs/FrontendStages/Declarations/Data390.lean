import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify374
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body390_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body390_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body390_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "m"))
  (Flapjack.Exp.const 0#64)) body390_0 body390_1

def body390_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "htab_set"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ts", Flapjack.Exp.const 24#64]),
    Flapjack.Exp.var Flapjack.VarKind.local "k", Flapjack.Exp.const 1#64]

def body390_4 : Prog (BitVec 64) :=
.decCall ("k") (Flapjack.Shape.one) ("sk_make") ([Flapjack.Exp.var Flapjack.VarKind.local "addr", Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "s")]) body390_3

def body390_5 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "s"))
  (Flapjack.Exp.const 0#64)) body390_4 body390_1

def body390_6 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64])

def body390_7 : Prog (BitVec 64) :=
.seq body390_5 body390_6

def body390_8 : Prog (BitVec 64) :=
.decCall ("s") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("htab_item") ([Flapjack.Exp.var Flapjack.VarKind.local "inner", Flapjack.Exp.var Flapjack.VarKind.local "i"]) body390_7

def body390_9 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "cap")) body390_8

def body390_10 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "jdel"
  [Flapjack.Exp.var Flapjack.VarKind.local "outer", Flapjack.Exp.var Flapjack.VarKind.local "addr"]

def body390_11 : Prog (BitVec 64) :=
.seq body390_10 body390_0

def body390_12 : Prog (BitVec 64) :=
.seq body390_9 body390_11

def body390_13 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body390_12

def body390_14 : Prog (BitVec 64) :=
.dec ("cap") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "inner", Flapjack.Exp.const 24#64])) body390_13

def body390_15 : Prog (BitVec 64) :=
.dec ("inner") (Flapjack.Shape.one) (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "m")) body390_14

def body390_16 : Prog (BitVec 64) :=
.seq body390_2 body390_15

def body390_17 : Prog (BitVec 64) :=
.decCall ("m") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("htab_get") ([Flapjack.Exp.var Flapjack.VarKind.local "outer", Flapjack.Exp.var Flapjack.VarKind.local "addr"]) body390_16

def body390_18 : Prog (BitVec 64) :=
.dec ("outer") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ts", Flapjack.Exp.const 32#64])) body390_17

def body390_19 : Prog (BitVec 64) :=
.seq body390_9 body390_10

def body390_20 : Prog (BitVec 64) :=
.seq body390_19 body390_0

def body390_21 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body390_20

def body390_22 : Prog (BitVec 64) :=
.dec ("cap") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "inner", Flapjack.Exp.const 24#64])) body390_21

def body390_23 : Prog (BitVec 64) :=
.dec ("inner") (Flapjack.Shape.one) (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "m")) body390_22

def body390_24 : Prog (BitVec 64) :=
.seq body390_2 body390_23

def body390_25 : Prog (BitVec 64) :=
.decCall ("m") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("htab_get") ([Flapjack.Exp.var Flapjack.VarKind.local "outer", Flapjack.Exp.var Flapjack.VarKind.local "addr"]) body390_24

def body390_26 : Prog (BitVec 64) :=
.dec ("outer") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ts", Flapjack.Exp.const 32#64])) body390_25

def originalData390 : Decl (BitVec 64) :=
.function { name := "destroy_storage", inline := false, exported := false, params := [("addr", Flapjack.Shape.one)], body := body390_18, returnShape := (Flapjack.Shape.one) }
def simplifiedData390 : Decl (BitVec 64) :=
.function { name := "destroy_storage", inline := false, exported := false, params := [("addr", Flapjack.Shape.one)], body := body390_26, returnShape := (Flapjack.Shape.one) }
def original390 := Pancake.PanLang.declToHOL originalData390
def simplified390 := Pancake.PanLang.declToHOL simplifiedData390
end InitECandidate.Proofs.FrontendStages.Declarations
