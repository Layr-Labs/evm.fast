import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify60
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body76_0 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64])

def body76_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body76_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.op Flapjack.BinOp.or
    [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "m"),
      Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "m"),
      Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "m"),
      Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "m")])
  (Flapjack.Exp.const 0#64)) body76_0 body76_1

def body76_3 : Prog (BitVec 64) :=
Flapjack.Prog.call none "u256_mod"
  [Flapjack.Exp.var Flapjack.VarKind.local "sum", Flapjack.Exp.var Flapjack.VarKind.local "m"]

def body76_4 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.rField 4 (Flapjack.Exp.var Flapjack.VarKind.local "s"))
  (Flapjack.Exp.const 0#64)) body76_3 body76_1

def body76_5 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "u256_to_digits"
  [Flapjack.Exp.var Flapjack.VarKind.local "u", Flapjack.Exp.var Flapjack.VarKind.local "sum"]

def body76_6 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "u", Flapjack.Exp.const 64#64])
  (Flapjack.Exp.const 1#64)

def body76_7 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "u", Flapjack.Exp.const 72#64])
  (Flapjack.Exp.const 0#64)

def body76_8 : Prog (BitVec 64) :=
Flapjack.Prog.call none "digits_divmod"
  [Flapjack.Exp.var Flapjack.VarKind.local "u", Flapjack.Exp.const 10#64, Flapjack.Exp.var Flapjack.VarKind.local "m"]

def body76_9 : Prog (BitVec 64) :=
.seq body76_7 body76_8

def body76_10 : Prog (BitVec 64) :=
.seq body76_6 body76_9

def body76_11 : Prog (BitVec 64) :=
.seq body76_5 body76_10

def body76_12 : Prog (BitVec 64) :=
.dec ("u") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "u256_ws", Flapjack.Exp.const 424#64]) body76_11

def body76_13 : Prog (BitVec 64) :=
.seq body76_4 body76_12

def body76_14 : Prog (BitVec 64) :=
.dec ("sum") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.rStruct
  [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "s"),
    Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "s"),
    Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "s"),
    Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "s")]) body76_13

def body76_15 : Prog (BitVec 64) :=
.decCall ("s") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_add_carry") ([Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.var Flapjack.VarKind.local "b"]) body76_14

def body76_16 : Prog (BitVec 64) :=
.seq body76_2 body76_15

def body76_17 : Prog (BitVec 64) :=
.seq body76_5 body76_6

def body76_18 : Prog (BitVec 64) :=
.seq body76_17 body76_7

def body76_19 : Prog (BitVec 64) :=
.seq body76_18 body76_8

def body76_20 : Prog (BitVec 64) :=
.dec ("u") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "u256_ws", Flapjack.Exp.const 424#64]) body76_19

def body76_21 : Prog (BitVec 64) :=
.seq body76_4 body76_20

def body76_22 : Prog (BitVec 64) :=
.dec ("sum") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.rStruct
  [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "s"),
    Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "s"),
    Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "s"),
    Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "s")]) body76_21

def body76_23 : Prog (BitVec 64) :=
.decCall ("s") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_add_carry") ([Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.var Flapjack.VarKind.local "b"]) body76_22

def body76_24 : Prog (BitVec 64) :=
.seq body76_2 body76_23

def originalData76 : Decl (BitVec 64) :=
.function { name := "u256_addmod", inline := false, exported := false, params := [("a", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("b", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("m", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])], body := body76_16, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) }
def simplifiedData76 : Decl (BitVec 64) :=
.function { name := "u256_addmod", inline := false, exported := false, params := [("a", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("b", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("m", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])], body := body76_24, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) }
def original76 := Pancake.PanLang.declToHOL originalData76
def simplified76 := Pancake.PanLang.declToHOL simplifiedData76
end InitECandidate.Proofs.FrontendStages.Declarations
