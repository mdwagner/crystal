module Crystal
  class CBackend
    def self.codegen(program, node : ASTNode, single_module = false, debug = Debug::Default)
      visitor = CodeGenVisitor.new(program, node, single_module: single_module, debug: debug)
      visitor.accept node

      raise "Not Implemented"
      # return c_modules
    end

    def self.gen_modules(c_modules)
      raise "Not Implemented"
      # return units
    end

    def self.emit(units)
      raise "Not Implemented"
    end

    class CodeGenVisitor < Visitor
      def initialize(@program : Program, @node : ASTNode, single_module = false, @debug = Debug::Default)
        @single_module = !!single_module
      end

      def visit(node)
        # pp! node.class
      end
    end
  end
end
